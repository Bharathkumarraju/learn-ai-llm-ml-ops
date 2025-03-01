from kafka import KafkaProducer
import json
import time
from datetime import datetime

def create_producer():
    return KafkaProducer(
        bootstrap_servers=['localhost:9092'],
        value_serializer=lambda x: json.dumps(x).encode('utf-8')
    )

def generate_message():
    return {
        'timestamp': datetime.now().strftime('%Y-%m-%d %H:%M:%S'),
        'value': round(time.time() % 100, 2)
    }

def main():
    producer = create_producer()
    topic_name = 'sample-topic'

    try:
        while True:
            message = generate_message()
            producer.send(topic_name, value=message)
            print(f"Produced message: {message}")
            time.sleep(1)

    except KeyboardInterrupt:
        print("Stopping producer...")
        producer.close()

if __name__ == "__main__":
    main()
