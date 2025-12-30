# ZHYL Backend (FastAPI + MySQL)

## 1. 环境要求
- Python 3.10+
- MySQL 8.0
- 已创建数据库：`zhyl`（已导入项目 SQL）

## 2. 配置数据库连接（建议用 .env）
在 `backend/` 目录下新建 `.env` 文件（不要提交到 git）：

```env
ZHYL_DB_HOST=127.0.0.1
ZHYL_DB_PORT=3306
ZHYL_DB_USER=root
ZHYL_DB_PASSWORD=你的密码
ZHYL_DB_NAME=zhyl
ZHYL_DB_CHARSET=utf8mb4
注意：仓库里只提交 .env.example，不提交真实 .env

3. 安装依赖
在 backend/ 目录执行：

PowerShell
powershell
复制代码
python -m venv .venv
# 如果 activate.ps1 被系统限制，可跳过激活，直接用 .venv\Scripts\python 执行
.\.venv\Scripts\python -m pip install -r requirements.txt
4. 启动服务
在 backend/ 目录执行：

powershell
复制代码
.\.venv\Scripts\python -m uvicorn app.main:app --reload --port 8000
启动成功后：

Swagger 文档：http://127.0.0.1:8000/docs

5. 快速自检
GET http://127.0.0.1:8000/health
期望返回：{"ok":true}

GET http://127.0.0.1:8000/db_ping
期望返回：{"ok":true,"db":"zhyl"}

6. 当前已开放接口（示例：公告管理）
GET /gonggao：公告列表

POST /gonggao：新增公告

GET /gonggao/{id}：按 id 查询公告

PUT /gonggao/{id}：按 id 修改公告

DELETE /gonggao/{id}：按 id 删除公告

前端对接建议：直接调用以上接口，传 JSON，后端返回 JSON，不需要前端写任何 SQL。

