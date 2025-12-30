from fastapi import APIRouter, HTTPException
from pydantic import BaseModel
from typing import Optional
from datetime import datetime
from ..db import db_cursor

router = APIRouter()


class YonghuCreate(BaseModel):
    yonghu_account: str
    yonghu_password: str
    yonghu_name: str
    yonghu_phone: Optional[str] = None
    yonghu_id_number: Optional[str] = None
    yonghu_photo: Optional[str] = None
    sex_types: Optional[int] = None
    yonghu_email: Optional[str] = None
    new_money: Optional[float] = 0.0


class YonghuUpdate(BaseModel):
    yonghu_password: Optional[str] = None
    yonghu_name: Optional[str] = None
    yonghu_phone: Optional[str] = None
    yonghu_id_number: Optional[str] = None
    yonghu_photo: Optional[str] = None
    sex_types: Optional[int] = None
    yonghu_email: Optional[str] = None
    new_money: Optional[float] = None


@router.get("")
def list_yonghu(keyword: Optional[str] = None):
    sql = "SELECT * FROM yonghu"
    params = []
    if keyword:
        sql += " WHERE yonghu_name LIKE %s OR yonghu_phone LIKE %s OR yonghu_account LIKE %s"
        k = f"%{keyword}%"
        params += [k, k, k]
    sql += " ORDER BY id DESC"

    with db_cursor(commit=False) as (_, cur):
        cur.execute(sql, params)
        rows = cur.fetchall()
    return {"items": rows}


@router.get("/by_account/{account}")
def get_by_account(account: str):
    with db_cursor(commit=False) as (_, cur):
        cur.execute("SELECT * FROM yonghu WHERE yonghu_account=%s", (account,))
        row = cur.fetchone()
    if not row:
        raise HTTPException(status_code=404, detail="not found")
    return row


@router.post("")
def create_yonghu(body: YonghuCreate):
    now = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    with db_cursor(commit=True) as (_, cur):
        # 先：检查账号是否重复
        cur.execute("SELECT id FROM yonghu WHERE yonghu_account=%s", (body.yonghu_account,))
        if cur.fetchone():
            raise HTTPException(status_code=400, detail="account already exists")

        cur.execute(
            """
            INSERT INTO yonghu
            (yonghu_account, yonghu_password, yonghu_name, yonghu_phone, yonghu_id_number,
             yonghu_photo, sex_types, yonghu_email, new_money, create_time)
            VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
            """,
            (
                body.yonghu_account,
                body.yonghu_password,
                body.yonghu_name,
                body.yonghu_phone,
                body.yonghu_id_number,
                body.yonghu_photo,
                body.sex_types,
                body.yonghu_email,
                body.new_money,
                now,
            ),
        )
        new_id = cur.lastrowid
    return {"ok": True, "id": new_id}


@router.put("/{yonghu_id}")
def update_yonghu(yonghu_id: int, body: YonghuUpdate):
    fields = []
    params = []
    for k, v in body.model_dump().items():
        if v is not None:
            fields.append(f"{k}=%s")
            params.append(v)

    if not fields:
        return {"ok": True, "msg": "nothing to update"}

    params.append(yonghu_id)

    with db_cursor(commit=True) as (_, cur):
        cur.execute(f"UPDATE yonghu SET {', '.join(fields)} WHERE id=%s", params)
        if cur.rowcount == 0:
            raise HTTPException(status_code=404, detail="yonghu not found")
    return {"ok": True}


@router.delete("/{yonghu_id}")
def delete_yonghu(yonghu_id: int):
    with db_cursor(commit=True) as (_, cur):
        cur.execute("DELETE FROM yonghu WHERE id=%s", (yonghu_id,))
        if cur.rowcount == 0:
            raise HTTPException(status_code=404, detail="yonghu not found")
    return {"ok": True}
