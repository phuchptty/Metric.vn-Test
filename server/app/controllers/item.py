from fastapi import HTTPException, status

from app.services import get_item_by_id, recursive_parent_category, get_current_price_by_item_id


def item_detail(item_id: int):
    item = get_item_by_id(item_id)

    if not item:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail=f'Item {item_id} not found')

    categories = recursive_parent_category(item.category_id)

    item_copy = item.__dict__
    item_copy["categories"] = categories

    current_price = get_current_price_by_item_id(item_id)
    item_copy["current_price"] = current_price.price

    return {
        "message": "Success",
        "data": item_copy
    }
