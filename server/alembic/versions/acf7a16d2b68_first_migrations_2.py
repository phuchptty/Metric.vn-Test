"""first migrations 2

Revision ID: acf7a16d2b68
Revises: 641e4a413f8d
Create Date: 2024-02-28 04:26:01.232788

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = 'acf7a16d2b68'
down_revision: Union[str, None] = '641e4a413f8d'
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    pass


def downgrade() -> None:
    pass
