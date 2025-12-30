# app/config.py
import os

# 先用默认值跑通；再改成自己的账号密码
DB_HOST = os.getenv("ZHYL_DB_HOST", "localhost")
DB_PORT = int(os.getenv("ZHYL_DB_PORT", "3306"))
DB_USER = os.getenv("ZHYL_DB_USER", "root")
DB_PASSWORD = os.getenv("ZHYL_DB_PASSWORD", "394448")   #密码
DB_NAME = os.getenv("ZHYL_DB_NAME", "zhyl")
DB_CHARSET = os.getenv("ZHYL_DB_CHARSET", "utf8mb4")