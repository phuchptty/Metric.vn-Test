from app import models
from app.database import get_db


def get_price_history_by_item_id(item_id: int):
    with get_db() as db:
        price_history = db.query(models.PriceHistory).where(models.PriceHistory.item_id == item_id).order_by(
            models.PriceHistory.id.asc()).all()

        return price_history


def get_current_price_by_item_id(item_id: int):
    with get_db() as db:
        current_price = db.query(models.PriceHistory).where(models.PriceHistory.item_id == item_id).order_by(
            models.PriceHistory.created_at.desc()).first()

        return current_price
