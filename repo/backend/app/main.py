from fastapi import FastAPI
from .db import db_cursor
from .routers.gonggao import router as gonggao_router
from .routers.yonghu import router as yonghu_router
from .routers.canteen import router as canteen_router

app = FastAPI(title="ZHYL Backend", version="1.0.0")


@app.get("/health")
def health():
    return {"ok": True}


@app.get("/db_ping")
def db_ping():
    with db_cursor(commit=False) as (_, cur):
        cur.execute("SELECT DATABASE() AS db")
        row = cur.fetchone()
    return {"ok": True, "db": row["db"]}


# 先：注册公告接口
app.include_router(gonggao_router, prefix="/gonggao", tags=["gonggao"])

# 再：注册用户(老人)接口
app.include_router(yonghu_router, prefix="/yonghu", tags=["yonghu"])

# 再：注册食堂/点餐接口（如果项目里要用）
app.include_router(canteen_router, prefix="/canteen", tags=["canteen"])