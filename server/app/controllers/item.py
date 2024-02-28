from app.services import get_item_detail


def item_detail(item_id: int):
    item = get_item_detail(item_id)

    return {
        "message": "Success",
        "data": item
    }
