import pandas as pd
import csv

if __name__ == '__main__':
    lense = pd.read_csv('lense.csv', dtype=str)
    print(lense.dtypes)

    minus_one_to_null = lambda x: x.replace('-1', '')
    lense.perPackage = lense.perPackage.apply(minus_one_to_null)

    remove_underbar = lambda x:str(x).replace('_', '.')
    lense.bc = lense.bc.apply(remove_underbar)

    str_to_float = lambda  x:x.replace("'", '').replace('"', '').replace('(+)', '')
    lense.pwr = lense.pwr.apply(str_to_float)

    single_to_double = lambda x:x.replace("'", '"')
    lense.productImage = lense.productImage.apply(single_to_double)
    lense.demonstrationImage = lense.demonstrationImage.apply(single_to_double)

    for row in lense.iterrows():
        print(row)
    lense.to_csv('lense_final.csv', index=False)




