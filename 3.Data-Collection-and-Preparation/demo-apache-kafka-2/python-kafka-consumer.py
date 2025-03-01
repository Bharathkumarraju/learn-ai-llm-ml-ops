"""
This script is a Python consumer that consumes messages from a Kafka topic.
"""
#!/usr/bin/env python3

from kafka import KafkaConsumer
import json

def create_consumer():
    """
    Create and return a Kafka consumer with JSON deserialization.

    Returns:
        KafkaConsumer: A configured Kafka consumer that deserializes messages from JSON.
    """
    return KafkaConsumer(
        'sample-topic',
        bootstrap_servers=['localhost:9092'],
        auto_offset_reset='earliest',
        enable_auto_commit=True,
        value_deserializer=lambda x: json.loads(x.decode('utf-8'))
    )

def main():
    """
    Main function to create a Kafka consumer and continuously consume messages.

    Consumes messages from a Kafka topic and prints each received message.
    Handles keyboard interrupt to gracefully close the consumer.
    """
    consumer = create_consumer()
    try:
        for message in consumer:
            print(f"Received message: {message.value}")
    except KeyboardInterrupt:
        print("Stopping consumer...")
        consumer.close()

if __name__ == "__main__":
    main()