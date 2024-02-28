from sqlalchemy.orm import relationship

from app.database import Base

from sqlalchemy import Column, Integer, String, TIMESTAMP, func, Float, ForeignKey


class Item(Base):
    __tablename__ = "items"

    id = Column(Integer, primary_key=True, index=True)
    slug = Column(String, index=True)
    name = Column(String, nullable=False)
    description = Column(String, nullable=True)

    # category map to category table
    category_id = Column(Integer, ForeignKey('categories.id'), nullable=False)
    category = relationship("Category", foreign_keys=[category_id], lazy="joined")

    # This is a JSON string
    images = Column(String, nullable=True, default="[]")
    thumbnail = Column(String, nullable=True)

    # item stat
    historical_sold = Column(Integer, default=0)
    rating_count = Column(Integer, default=0)
    rating_avg = Column(Float, default=0)
    comment_count = Column(Integer, default=0)
    price_before_discount = Column(Float, default=0)

    provider = Column(String, nullable=False)
    provider_url = Column(String, nullable=False)

    created_at = Column(TIMESTAMP(timezone=True),
                        nullable=False, server_default=func.now())
    updated_at = Column(TIMESTAMP(timezone=True),
                        default=None, onupdate=func.now())
