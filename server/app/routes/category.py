from fastapi import APIRouter
from app.controllers import get_categories

router = APIRouter()


@router.get("/list")
def categories():
    return get_categories()
