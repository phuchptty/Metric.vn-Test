from app.services import get_price_history_by_item_id


def item_price_history(item_id: int):
    price_history = get_price_history_by_item_id(item_id)

    return {
        "message": "Success",
        "data": price_history
    }
