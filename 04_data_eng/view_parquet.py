import pandas as pd

file_path = "/Users/tanmaie/Downloads/intern-bootcamp/04_data_eng/data/processed/processed_data.parquet"
df = pd.read_parquet(file_path)
print(df.head())
print(df.info())

