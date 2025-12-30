from fastapi import APIRouter, HTTPException
from pydantic import BaseModel
from typing import Optional
from datetime import datetime
from ..db import db_cursor

router = APIRouter()


class GonggaoCreate(BaseModel):
    gonggao_name: str
    gonggao_types: int = 1
    gonggao_content: Optional[str] = None
    gonggao_photo: Optional[str] = None


class GonggaoUpdate(BaseModel):
    gonggao_name: Optional[str] = None
    gonggao_types: Optional[int] = None
    gonggao_content: Optional[str] = None
    gonggao_photo: Optional[str] = None


@router.get("")
def list_gonggao(keyword: Optional[str] = None):
    sql = "SELECT * FROM gonggao"
    params = []
    if keyword:
        sql += " WHERE gonggao_name LIKE %s OR gonggao_content LIKE %s"
        k = f"%{keyword}%"
        params += [k, k]
    sql += " ORDER BY id DESC"

    with db_cursor(commit=False) as (_, cur):
        cur.execute(sql, params)
        rows = cur.fetchall()
    return {"items": rows}


@router.post("")
def create_gonggao(body: GonggaoCreate):
    now = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    with db_cursor(commit=True) as (_, cur):
        cur.execute(
            """
            INSERT INTO gonggao
            (gonggao_name, gonggao_photo, gonggao_types, insert_time, gonggao_content, create_time)
            VALUES (%s, %s, %s, %s, %s, %s)
            """,
            (
                body.gonggao_name,
                body.gonggao_photo,
                body.gonggao_types,
                now,
                body.gonggao_content,
                now,
            ),
        )
        new_id = cur.lastrowid
    return {"ok": True, "id": new_id}


@router.put("/{gonggao_id}")
def update_gonggao(gonggao_id: int, body: GonggaoUpdate):
    fields = []
    params = []
    for k, v in body.model_dump().items():
        if v is not None:
            fields.append(f"{k}=%s")
            params.append(v)

    if not fields:
        return {"ok": True, "msg": "nothing to update"}

    params.append(gonggao_id)

    with db_cursor(commit=True) as (_, cur):
        cur.execute(f"UPDATE gonggao SET {', '.join(fields)} WHERE id=%s", params)
        if cur.rowcount == 0:
            raise HTTPException(status_code=404, detail="gonggao not found")
    return {"ok": True}


@router.delete("/{gonggao_id}")
def delete_gonggao(gonggao_id: int):
    with db_cursor(commit=True) as (_, cur):
        cur.execute("DELETE FROM gonggao WHERE id=%s", (gonggao_id,))
        if cur.rowcount == 0:
            raise HTTPException(status_code=404, detail="gonggao not found")
    return {"ok": True}
