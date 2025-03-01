import requests
from confluent_kafka import Producer, KafkaException, KafkaError
from confluent_kafka.admin import AdminClient, NewTopic

# Kafka configuration
kafka_config = {
    'bootstrap.servers': 'localhost:9092',  # Replace with your Kafka broker address if needed
}

# Topic name
topic_name = "order-topic"

# Function to log messages
def log(message):
    print(f"[INFO] {message}")

# Function to create a topic
def create_topic(admin_client, topic_name):
    log(f"Creating topic: {topic_name}")
    topic_list = [NewTopic(topic_name, num_partitions=1, replication_factor=1)]
    fs = admin_client.create_topics(topic_list)
    for topic, f in fs.items():
        try:
            f.result()  # The result itself is None if successful
            log(f"Topic '{topic}' created successfully.")
        except KafkaException as e:
            log(f"Failed to create topic '{topic}': {e}")

# Function to delete a topic
def delete_topic(admin_client, topic_name):
    log(f"Deleting topic: {topic_name}")
    fs = admin_client.delete_topics([topic_name])
    for topic, f in fs.items():
        try:
            f.result()  # The result itself is None if successful
            log(f"Topic '{topic}' deleted successfully.")
        except KafkaException as e:
            log(f"Failed to delete topic '{topic}': {e}")

# Function to fetch orders from FastAPI
def fetch_orders():
    url = "http://52.59.240.23:8000/generate-orders"
    log(f"Fetching orders from {url}")
    response = requests.get(url)
    
    if response.status_code == 200:
        log("Orders fetched successfully.")
        return response.json()  # Assuming the response is a JSON
    else:
        log(f"Failed to fetch orders. Status code: {response.status_code}")
        return None

# Function to produce messages to Kafka
def produce_messages(producer, topic_name, message):
    log(f"Producing message to topic: {topic_name}")
    producer.produce(topic_name, message)
    producer.flush()
    log("Message produced successfully.")

# Main function
def main():
    # Step 1: Setup Kafka Admin Client and Producer
    admin_client = AdminClient(kafka_config)
    producer = Producer(kafka_config)
    
    # Step 2: Check if the topic exists, delete if it does
    topics = admin_client.list_topics().topics
    if topic_name in topics:
        delete_topic(admin_client, topic_name)
    
    # Step 3: Create the Kafka topic
    create_topic(admin_client, topic_name)

    # Step 4: Fetch orders from FastAPI
    orders = fetch_orders()
    
    if orders is not None:
        # Convert the fetched orders to a string (assuming it's JSON-compatible)
        orders_str = str(orders)

        # Step 5: Produce the fetched order to Kafka
        produce_messages(producer, topic_name, orders_str)
    
    log("Script finished after producing message.")

# Run the main function
if __name__ == "__main__":
    main()
