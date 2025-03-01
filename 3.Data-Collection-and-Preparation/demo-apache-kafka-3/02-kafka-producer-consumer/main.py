from confluent_kafka import Producer, Consumer, KafkaError, KafkaException
from confluent_kafka.admin import AdminClient, NewTopic

# Configuration for Kafka connection
kafka_config = {
    'bootstrap.servers': 'localhost:9092',  # Replace with your Kafka broker address
}

# Admin client to create topics
admin_client = AdminClient(kafka_config)

# Function to create a topic
def create_topic(topic_name, num_partitions=1, replication_factor=1):
    topic_list = [NewTopic(topic_name, num_partitions=num_partitions, replication_factor=replication_factor)]
    fs = admin_client.create_topics(topic_list)
    for topic, f in fs.items():
        try:
            f.result()  # The result itself is None
            print(f"Topic '{topic}' created successfully")
        except KafkaException as e:
            # If the topic already exists, we skip this step
            print(f"Failed to create topic '{topic}': {e}")

# Function to produce messages to Kafka
def produce_messages(topic_name, messages):
    producer = Producer(kafka_config)

    for message in messages:
        producer.produce(topic_name, message)
        print(f"Produced message: {message}")

    producer.flush()

# Function to consume messages from Kafka
def consume_messages(topic_name, group_id='my-group'):
    consumer_config = {
        'bootstrap.servers': 'localhost:9092',
        'group.id': group_id,
        'auto.offset.reset': 'earliest'
    }
    consumer = Consumer(consumer_config)

    consumer.subscribe([topic_name])
    print(f"Subscribed to topic '{topic_name}'")

    try:
        while True:
            msg = consumer.poll(timeout=1.0)
            if msg is None:
                break
            if msg.error():
                if msg.error().code() == KafkaError._PARTITION_EOF:
                    print('End of partition reached {0}/{1}'.format(msg.topic(), msg.partition()))
                elif msg.error():
                    raise KafkaException(msg.error())
            else:
                print(f"Consumed message: {msg.value().decode('utf-8')}")
    finally:
        consumer.close()

# Main function to run the producer and consumer
def main():
    topic_name = 'test-topic'
    
    # Create topic
    create_topic(topic_name)

    # Produce messages
    messages_to_produce = ['Hello Kafka', 'Kafka with Python', 'Test message 1', 'Test message 2']
    produce_messages(topic_name, messages_to_produce)

    # Consume messages
    print("Consuming messages from topic...")
    consume_messages(topic_name)

if __name__ == "__main__":
    main()
