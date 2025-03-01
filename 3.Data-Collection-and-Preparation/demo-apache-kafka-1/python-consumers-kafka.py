from kafka import KafkaConsumer
import json

def create_consumer():
    return KafkaConsumer(
        'sample-topic',
        bootstrap_servers=['localhost:9092'],
        auto_offset_reset='earliest',
        enable_auto_commit=True,
        group_id='my-group',
        value_deserializer=lambda x: json.loads(x.decode('utf-8'))
    )

def main():
    consumer = create_consumer()

    try:
        for message in consumer:
            print(f"Received message: {message.value}")

    except KeyboardInterrupt:
        print("Stopping consumer...")
        consumer.close()

if __name__ == "__main__":
    main()
