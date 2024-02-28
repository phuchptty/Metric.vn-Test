from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from .database import engine
from .models.price_history import Base
from .routes import item, category

Base.metadata.create_all(bind=engine)

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(item.router, tags=['Item'], prefix='/v1/item')
app.include_router(category.router, tags=['Category'], prefix='/v1/category')


@app.get("/")
def read_root():
    return {"Hello": "World"}
