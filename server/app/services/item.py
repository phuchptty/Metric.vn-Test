from app import models
from ..database import get_db


def get_item_by_id(item_id: int):
    with get_db() as db:
        item = db.query(models.Item).filter(models.Item.id == item_id).first()
        return item
