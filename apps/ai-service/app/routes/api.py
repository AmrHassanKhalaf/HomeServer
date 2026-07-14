from fastapi import APIRouter

from app.schemas.summarize import (
    SummarizeRequest,
    SummarizeResponse,
)

from app.services.ai_service import AIService

router = APIRouter()

service = AIService()


@router.get("/")
def root():
    return {
        "message": "AI Service Running"
    }


@router.get("/hello")
def hello():
    return {
        "message": "Hello AI"
    }


@router.post(
    "/summarize",
    response_model=SummarizeResponse
)
def summarize(data: SummarizeRequest):

    result = service.summarize(data.text)

    return {
        "summary": result
    }
