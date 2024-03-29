from sqlalchemy.orm import joinedload

from app import models
from app.database import get_db


def get_category_by_id(category_id: int):
    with get_db() as db:
        result = db.query(models.Category).where(models.Category.id == category_id).first()
        return result


def recursive_parent_category(category_id: int):
    parent_categories = []
    while category_id != 0:
        category = get_category_by_id(category_id)

        if category is not None:
            parent_categories.append(category)
            category_id = category.parent_id
        else:
            category_id = 0
    return parent_categories


def get_all_category():
    with get_db() as db:
        result = db.query(models.Category).where(models.Category.parent_id == None).options(
            joinedload(models.Category.children)).all()

        return result
