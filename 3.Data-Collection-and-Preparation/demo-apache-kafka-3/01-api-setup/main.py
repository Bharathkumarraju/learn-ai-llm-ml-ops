from fastapi import FastAPI
import random
import string
import json
from datetime import datetime
import uuid

app = FastAPI()

# Sample data
products = ['Laptop', 'Smartphone', 'Headphones', 'Tablet', 'Smartwatch']
cities = ['New York', 'London', 'Tokyo', 'Paris', 'Sydney', 'Berlin', 'Singapore', 'Dubai', 'Toronto', 'Mumbai']

def generate_random_order():
    return {
        "order_id": str(uuid.uuid4()),
        "product": random.choice(products),
        "quantity": random.randint(1, 5),
        "price": round(random.uniform(50.00, 1000.00), 2),
        "customer_location": random.choice(cities),
        "timestamp": datetime.now().isoformat()
    }

@app.get("/generate-orders")
def generate_orders():
    orders = {}
    for i in range(50):
        order_key = f"order_{i+1}"
        orders[order_key] = generate_random_order()
    return orders
