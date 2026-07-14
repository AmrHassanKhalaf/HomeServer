from fastapi import FastAPI
from app.routes.api import router

app = FastAPI(
    title="Portfolio AI Service",
    version="1.0.0"
)

app.include_router(router)
