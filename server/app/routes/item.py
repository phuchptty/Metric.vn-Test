from fastapi import APIRouter
from app.controllers import item_detail, item_price_history

router = APIRouter()


@router.get("/{item_id}/detail")
def read_item_detail(item_id: int):
    return item_detail(item_id)


@router.get("/{item_id}/price-history")
def read_item_price_history(item_id: int):
    return item_price_history(item_id)
