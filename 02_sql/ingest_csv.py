import os
import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.engine import URL
from dotenv import load_dotenv

load_dotenv()

uid = os.getenv("userID")
password = os.getenv("password")
host = os.getenv("host")
port = os.getenv("port")
database = os.getenv("database")

# ✅ Build connection URL safely
url = URL.create(
    drivername="postgresql",
    username=uid,
    password=password,
    host=host,
    port=port,
    database=database,
)

engine = create_engine(url)

csv_path = "/Users/tanmaie/Downloads/intern-bootcamp/data/raw/customers.csv"
df = pd.read_csv(csv_path)
df2 = pd.read_csv("/Users/tanmaie/Downloads/intern-bootcamp/data/raw/order_items.csv")
df3 = pd.read_csv("/Users/tanmaie/Downloads/intern-bootcamp/data/raw/orders.csv")

df.to_sql("customers", engine, if_exists="replace", index=False)
df2.to_sql("order_items", engine, if_exists="replace", index=False)
df3.to_sql("orders",engine, if_exists="replace", index=False)

print("✅ Data inserted successfully!")
df4 = pd.read_csv("/Users/tanmaie/Downloads/intern-bootcamp/data/raw/products.csv")
df5 = pd.read_csv("/Users/tanmaie/Downloads/intern-bootcamp/data/raw/transactions.csv")

df4.to_sql("products", engine, if_exists="replace", index=False)
df5.to_sql("transactions", engine, if_exists="replace", index=False)
print("✅ Data inserted successfully!2")
 