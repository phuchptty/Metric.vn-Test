from app.services import get_all_category


def get_categories():
    categories = get_all_category()

    return {
        "message": "success",
        "data": categories
    }
