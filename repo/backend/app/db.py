from contextlib import contextmanager
import pymysql
from pymysql.cursors import DictCursor
from .config import DB_HOST, DB_PORT, DB_USER, DB_PASSWORD, DB_NAME, DB_CHARSET


def get_conn():
    return pymysql.connect(
        host=DB_HOST,
        port=DB_PORT,
        user=DB_USER,
        password=DB_PASSWORD,
        database=DB_NAME,
        charset=DB_CHARSET,
        cursorclass=DictCursor,
        autocommit=False,
    )


@contextmanager
def db_cursor(commit: bool = False):
    """
    先：打开连接
    再：yield 一个 cursor 给你执行 SQL
    最后：按需 commit；出错就 rollback；最终关闭连接
    """
    conn = get_conn()
    try:
        cur = conn.cursor()
        yield conn, cur
        if commit:
            conn.commit()
    except Exception:
        conn.rollback()
        raise
    finally:
        conn.close()