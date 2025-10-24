import pandas as pd
from pathlib import Path
import logging

raw_data = Path("/Users/tanmaie/Downloads/intern-bootcamp/04_data_eng/data/raw/01_data.csv")
processed_data = Path("/Users/tanmaie/Downloads/intern-bootcamp/04_data_eng/data/processed/processed_data.parquet")
logs_path = Path("/Users/tanmaie/Downloads/intern-bootcamp/04_data_eng/data/logs/pipeline.logs")


logging.basicConfig(
    filename=logs_path,
    level=logging.INFO,
    format="%(asctime)s:%(levelname)s:%(message)s"
)

logging.info("Pipeline started.")

df = pd.read_csv(raw_data)
logging.info("Raw data loaded.")
logging.info(f"data loaded: {df.shape[0]} rows, {df.shape[1]} columns" )

df['price'] = pd.to_numeric(df['price'], errors='coerce').fillna(0)
logging.info("price column duplicates removed")

df.to_parquet(processed_data,index = False)
logging.info("processed data saved to {processed_data}")

logging.info("Pipeline finished successfully.")