from csv2sql.controller.lens_controller import LensController
from csv2sql.csv_handler.csv2row import csv2row, read_csv
from csv2sql.controller import CONNECTION_STRING


if __name__ == "__main__":

    CSV_IN = "lenses.csv"

    lenses = read_csv(CSV_IN)
    lenses = csv2row(lenses)

    lens_controller = LensController(CONNECTION_STRING)
    lens_controller.insert_lens(lenses)
