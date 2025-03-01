(.venv) bharathkumardasaraju@02-kafka-producer-consumer$ python3.12 ./main.py
Topic 'test-topic' created successfully
Produced message: Hello Kafka
Produced message: Kafka with Python
Produced message: Test message 1
Produced message: Test message 2
Consuming messages from topic...
Subscribed to topic 'test-topic'
(.venv) bharathkumardasaraju@02-kafka-producer-consumer$


(.venv) bharathkumardasaraju@02-kafka-producer-consumer$ docker exec demo-apache-kafka-kafka-1 kafka-topics --list --bootstrap-server localhost:9092
__consumer_offsets
sample-topic
test-topic
(.venv) bharathkumardasaraju@02-kafka-producer-consumer$



(.venv) bharathkumardasaraju@02-kafka-producer-consumer$ docker exec demo-apache-kafka-kafka-1 kafka-topics --list --bootstrap-server localhost:9092
__consumer_offsets
sample-topic
test-topic
(.venv) bharathkumardasaraju@02-kafka-producer-consumer$ docker exec demo-apache-kafka-kafka-1 kafka-consumer-groups --bootstrap-server localhost:9092 --list
my-group
(.venv) bharathkumardasaraju@02-kafka-producer-consumer$ docker exec demo-apache-kafka-kafka-1 kafka-consumer-groups --bootstrap-server localhost:9092 --group my-group --describe

GROUP           TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID                                             HOST            CLIENT-ID
my-group        sample-topic    0          43              43              0               kafka-python-2.0.5-deb9dfef-afed-455f-8d68-1ee673dafdf3 /172.19.0.1     kafka-python-2.0.5%
(.venv) bharathkumardasaraju@02-kafka-producer-consumer$ docker exec demo-apache-kafka-kafka-1 kafka-consumer-groups --bootstrap-server localhost:9092 --describe --group my-group

GROUP           TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID                                             HOST            CLIENT-ID
my-group        sample-topic    0          43              43              0               kafka-python-2.0.5-deb9dfef-afed-455f-8d68-1ee673dafdf3 /172.19.0.1     kafka-python-2.0.5%
(.venv) bharathkumardasaraju@02-kafka-producer-consumer$ docker exec demo-apache-kafka-kafka-1 kafka-consumer-groups --bootstrap-server localhost:9092 --describe --group my-group


GROUP           TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID                                             HOST            CLIENT-ID
my-group        sample-topic    0          43              43              0               kafka-python-2.0.5-deb9dfef-afed-455f-8d68-1ee673dafdf3 /172.19.0.1     kafka-python-2.0.5%                             (.venv) bharathkumardasaraju@02-kafka-producer-consumer$
