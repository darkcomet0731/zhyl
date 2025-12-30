from fastapi import APIRouter, HTTPException
from pydantic import BaseModel
from typing import Optional
from datetime import datetime
from ..db import db_cursor

router = APIRouter()

# ====== 你只需要在这里对齐字段名（如果你数据库里叫法不同，就改这里）======
CAIPIN_TBL = "caipin"
CAIPIN_ID = "id"
CAIPIN_NAME = "name"
CAIPIN_PRICE = "price"
CAIPIN_STOCK = "stock"

ORDER_TBL = "caipin_order"
ORDER_ID = "id"
ORDER_NO = "order_no"
ORDER_USER = "yonghu_id"
ORDER_ITEM = "item_name"
ORDER_QTY = "qty"
ORDER_UNIT_PRICE = "unit_price"
ORDER_STATUS = "status"
ORDER_TIME = "create_time"
# ========================================================================


class OrderCreate(BaseModel):
    yonghu_id: int
    caipin_id: int
    qty: int = 1


@router.get("/caipin")
def list_caipin():
    sql = f"SELECT {CAIPIN_ID} AS id, {CAIPIN_NAME} AS name, {CAIPIN_PRICE} AS price, {CAIPIN_STOCK} AS stock FROM {CAIPIN_TBL} ORDER BY {CAIPIN_ID} ASC"
    with db_cursor(commit=False) as (_, cur):
        cur.execute(sql)
        rows = cur.fetchall()
    return {"items": rows}


@router.post("/order")
def create_order(body: OrderCreate):
    if body.qty <= 0:
        raise HTTPException(status_code=400, detail="qty must be > 0")

    # 生成订单号：DC + 时间
    order_no = "DC" + datetime.now().strftime("%Y%m%d%H%M%S")
    now = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    with db_cursor(commit=True) as (conn, cur):
        # 先：查菜品
        cur.execute(
            f"SELECT {CAIPIN_ID} AS id, {CAIPIN_NAME} AS name, {CAIPIN_PRICE} AS price, {CAIPIN_STOCK} AS stock FROM {CAIPIN_TBL} WHERE {CAIPIN_ID}=%s",
            (body.caipin_id,),
        )
        item = cur.fetchone()
        if not item:
            raise HTTPException(status_code=404, detail="caipin not found")

        if int(item["stock"]) < body.qty:
            raise HTTPException(status_code=400, detail="not enough stock")

        # 再：扣库存
        cur.execute(
            f"UPDATE {CAIPIN_TBL} SET {CAIPIN_STOCK}={CAIPIN_STOCK}-%s WHERE {CAIPIN_ID}=%s",
            (body.qty, body.caipin_id),
        )

        # 再：写订单（字段名按你贴的订单行风格）
        cur.execute(
            f"""
            INSERT INTO {ORDER_TBL}
            ({ORDER_NO},{ORDER_USER},{ORDER_ITEM},{ORDER_QTY},{ORDER_UNIT_PRICE},{ORDER_STATUS},{ORDER_TIME})
            VALUES (%s,%s,%s,%s,%s,%s,%s)
            """,
            (order_no, body.yonghu_id, item["name"], body.qty, item["price"], "PAID", now),
        )
        new_id = cur.lastrowid

    return {"ok": True, "id": new_id, "order_no": order_no}


@router.get("/order")
def list_orders(yonghu_id: Optional[int] = None):
    sql = f"SELECT * FROM {ORDER_TBL}"
    params = []
    if yonghu_id is not None:
        sql += f" WHERE {ORDER_USER}=%s"
        params.append(yonghu_id)
    sql += f" ORDER BY {ORDER_ID} DESC"

    with db_cursor(commit=False) as (_, cur):
        cur.execute(sql, params)
        rows = cur.fetchall()
    return {"items": rows}
