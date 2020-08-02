from sqlalchemy import create_engine
from sqlalchemy import Column, Integer, Numeric, Text, JSON
from sqlalchemy.ext.declarative import declarative_base
from csv2sql.controller import CONNECTION_STRING


engine = create_engine(CONNECTION_STRING)
Base = declarative_base()


class Lens(Base):

    __tablename__ = 'lens'

    lens_id = Column(Integer, primary_key=True)
    name = Column(Text)
    graphic_dia = Column(Numeric)
    per_package = Column(Integer)
    price = Column(Integer)
    review_cnt = Column(Integer)
    bc = Column(Numeric)
    dia = Column(Numeric)
    per = Column(JSON)
    url = Column(Text)
    product_image = Column(JSON)
    demonstration_image = Column(JSON)
