from sqlalchemy import Column, Integer, String, TIMESTAMP, func, ForeignKey
from sqlalchemy.orm import relationship

from app.database import Base


class Category(Base):
    __tablename__ = "categories"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, nullable=False)
    slug = Column(String, index=True)

    level = Column(Integer, default=0)
    parent_id = Column(Integer, ForeignKey("categories.id"), default=0)

    parent = relationship("Category", remote_side=[id], backref="children")

    created_at = Column(TIMESTAMP(timezone=True),
                       nullable=False, server_default=func.now())
    updated_at = Column(TIMESTAMP(timezone=True),
                       default=None, onupdate=func.now())
