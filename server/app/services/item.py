from fastapi import HTTPException, status
import json
from app import models
from app.services.category import recursive_parent_category
from app.services.price_history import get_current_price_by_item_id
from ..database import get_db


def get_item_by_id(item_id: int):
    with get_db() as db:
        item = db.query(models.Item).where(models.Item.id == item_id).first()
        return item


def get_item_detail(item_id: int):
    item = get_item_by_id(item_id)

    if not item:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail=f'Item {item_id} not found')

    categories = recursive_parent_category(item.category_id)

    item_copy = item.__dict__
    item_copy["categories"] = categories

    item_copy["images"] = json.loads(item.images)

    current_price = get_current_price_by_item_id(item_id)
    item_copy["current_price"] = current_price.price

    return item_copy
