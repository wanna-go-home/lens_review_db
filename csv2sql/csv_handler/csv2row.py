from pathlib import Path
import pandas as pd


def read_csv(filename: str) -> pd.DataFrame:

    path = Path(__file__).parent.parent / filename
    if not path.is_file():
        print("Something fucked")
        exit(1)

    return pd.read_csv(path, header=0, dtype=str)


def csv2row(df: pd.DataFrame) -> pd.DataFrame:

    json_columns = {"product_image", "demonstration_image"}

    for column in json_columns:
        df[column] = df[column].str.replace("'", '"', regex=False)

    return df
