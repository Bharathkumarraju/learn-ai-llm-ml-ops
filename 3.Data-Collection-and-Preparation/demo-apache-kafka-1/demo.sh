sudo apt install -y python3-pip python3-venv

python3 -m venv kafka_env

source kafka_env/bin/activate

Now why we need virtualenv:

So in python, when we write the code, we would need to install a lot of different packages.
Of course, all of these packages will be installed on our operating system.
But in the future when we install another version of that package, it could create conflict between the existing package.

To avoid this what python has provided is also a package called as virtual environment.


pip3 install kafka-python


(.venv) bharathkumardasaraju@demo-apache-kafka$ docker-compose up -d
[+] Running 19/2
 ✔ kafka 2 layers [⣿⣿]      0B/0B      Pulled                                                                                                                                                                                                                40.5s
 ✔ zookeeper 15 layers [⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]      0B/0B      Pulled                                                                                                                                                                                              40.5s
[+] Building 0.0s (0/0)
[+] Running 3/3
 ✔ Network demo-apache-kafka_default        Created                                                                                                                                                                                                           0.0s
 ✔ Container demo-apache-kafka-zookeeper-1  Started                                                                                                                                                                                                           0.4s
 ✔ Container demo-apache-kafka-kafka-1      Started                                                                                                                                                                                                           0.4s
(.venv) bharathkumardasaraju@demo-apache-kafka$




(.venv) bharathkumardasaraju@demo-apache-kafka$ docker container ls
CONTAINER ID   IMAGE                              COMMAND                  CREATED              STATUS              PORTS                                        NAMES
cc9d4fcbb05c   confluentinc/cp-kafka:latest       "/etc/confluent/dock…"   About a minute ago   Up About a minute   0.0.0.0:9092->9092/tcp                       demo-apache-kafka-kafka-1
432b59741c72   confluentinc/cp-zookeeper:latest   "/etc/confluent/dock…"   About a minute ago   Up About a minute   2888/tcp, 0.0.0.0:2181->2181/tcp, 3888/tcp   demo-apache-kafka-zookeeper-1
25aef675046b   ghcr.io/k3d-io/k3d-proxy:5.7.3     "/bin/sh -c nginx-pr…"   5 months ago         Up 18 hours         80/tcp, 0.0.0.0:51171->6443/tcp              k3d-bharath-cluster-serverlb
2c482ec142fd   rancher/k3s:v1.30.3-k3s1           "/bin/k3d-entrypoint…"   5 months ago         Up 18 hours                                                      k3d-bharath-cluster-agent-1
eb42f3b32bef   rancher/k3s:v1.30.3-k3s1           "/bin/k3d-entrypoint…"   5 months ago         Up 18 hours                                                      k3d-bharath-cluster-agent-0
2dba0e3986ed   rancher/k3s:v1.30.3-k3s1           "/bin/k3d-entrypoint…"   5 months ago         Up 18 hours                                                      k3d-bharath-cluster-server-0
(.venv) bharathkumardasaraju@demo-apache-kafka$


list_topics:

(.venv) bharathkumardasaraju@demo-apache-kafka$ docker exec demo-apache-kafka-kafka-1 kafka-topics --list --bootstrap-server localhost:9092

(.venv) bharathkumardasaraju@demo-apache-kafka$

Create a Topic in kafka:

(.venv) bharathkumardasaraju@demo-apache-kafka$ docker exec demo-apache-kafka-kafka-1 kafka-topics --create --topic sample-topic --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1
Created topic sample-topic.
(.venv) bharathkumardasaraju@demo-apache-kafka$ docker exec demo-apache-kafka-kafka-1 kafka-topics --list --bootstrap-server localhost:9092
sample-topic
(.venv) bharathkumardasaraju@demo-apache-kafka$

Now we can push all of the events to that kafka topic.

(.venv) bharathkumardasaraju@demo-apache-kafka$ docker exec demo-apache-kafka-kafka-1 kafka-topics --describe --topic sample-topic --bootstrap-server localhost:9092
Topic: sample-topic     TopicId: WscTzyhFSQW-1RicsSqc8g PartitionCount: 1       ReplicationFactor: 1    Configs:
        Topic: sample-topic     Partition: 0    Leader: 1       Replicas: 1     Isr: 1  Elr: N/A        LastKnownElr: N/A
(.venv) bharathkumardasaraju@demo-apache-kafka$


Now produce some sample events to the sample-topic
