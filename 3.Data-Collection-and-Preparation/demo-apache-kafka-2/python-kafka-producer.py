"""
This script is a Python producer that sends messages to a Kafka topic
"""
#!/usr/bin/env python3

from kafka import KafkaProducer
import json
import time
from datetime import datetime

def create_producer():
    """
    Create and return a Kafka producer with JSON serialization.

    Returns:
        KafkaProducer: A configured Kafka producer that serializes messages to JSON.
    """
    return KafkaProducer(
        bootstrap_servers=['localhost:9092'],
        value_serializer=lambda x: json.dumps(x).encode('utf-8')
    )

def generate_message():
    """
    Generate a sample message with a timestamp and a random value.

    Returns:
        dict: A dictionary containing a timestamp and a random value.
    """
    return {
        'timestamp': datetime.now().strftime('%Y-%m-%d %H:%M:%S'),
        'value': round(time.time() % 100, 2)
    }

def main():
    """
    Main function to create a Kafka producer and continuously send messages.

    Sends messages to a Kafka topic every second until interrupted.
    Handles keyboard interrupt to gracefully close the producer.
    """
    producer = create_producer()
    topic_name = 'sample-topic'

    try:
        while True:
            # Generate and send a message to the Kafka topic
            message = generate_message()
            producer.send(topic_name, value=message)
            print(f"Produced message: {message}")
            time.sleep(1)

    except KeyboardInterrupt:
        print("Stopping producer...")
        producer.close()

if __name__ == "__main__":
    main()