from pymongo import MongoClient
from faker import Faker

fake = Faker()

client = MongoClient("mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000&appName=mongosh+2.5.8")
db = client["tanmaie_database"]
collection = db["customers_collection"]


fake_customer = []
for i in range(30):
    fake_customer.append({
        'user_name':fake.name(),
        'age':fake.random_int(4,70),
        'address':fake.address(),
        'email':fake.email()
    })

collection.insert_many(fake_customer)

collection2 = db["products_collection"]

fake_products = []
for i in range(30):
    fake_products.append(
        {
            'product_name':fake.name(),
            'price': fake.random_int(10,1000),
            'quantity_prod': fake.random_int(1,30)
        }
    )

collection2.insert_many(fake_products)

collection3 = db["order_collection"]
fake_orders =[]
for i in range(30):
    fake_orders.append(
        {
            'order_id':fake.random_int(1,30),
            'product_name':fake.name(),
            'adress':fake.address(),
            'customer_name':fake.name()
            }
    )

collection3.insert_many(fake_orders)