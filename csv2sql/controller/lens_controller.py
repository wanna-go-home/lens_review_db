import pandas as pd
import json

from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.exc import SQLAlchemyError

from csv2sql.model.lens import Lens


class LensController(object):

    JSON_COLUMNS = {"pwr", "product_image", "demonstration_image"}

    def __init__(self, connection_string: str):
        self.engine = create_engine(connection_string)
        self.Session = sessionmaker()
        self.Session.configure(bind=self.engine)

    def _get_session(self):
        return self.Session()

    @staticmethod
    def _create_lens(row: pd.Series) -> Lens:
        data = row.to_dict()

        for column in LensController.JSON_COLUMNS:
            data[column] = json.loads(data[column])

        return Lens(**data)

    def insert_lens(self, df: pd.DataFrame) -> None:
        """
        lens table에 맞는 data format 을 가지고 있는 df를  parameter로 받아 db에 모두 insert 한다.

        :param df:
        :return:
        """
        session = self._get_session()
        try:
            for _, row in df.iterrows():
                # print(*_row)
                lens = self._create_lens(row)
                session.add(lens)
            session.commit()
        except SQLAlchemyError as e:
            print(e)
        finally:
            session.close()
