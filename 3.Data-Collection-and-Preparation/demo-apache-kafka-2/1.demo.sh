root@controlplane ~ ➜  sudo apt install -y python3-pip python3-venv
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
python3-pip is already the newest version (24.0+dfsg-1ubuntu1.1).
python3-venv is already the newest version (3.12.3-0ubuntu2).
0 upgraded, 0 newly installed, 0 to remove and 35 not upgraded.

root@controlplane ~ ➜  ls -rtlh
total 4.0K
-rw-r--r-- 1 root root 28 Feb 24 11:20 bashrc

root@controlplane ~ ➜  python3 -m venv kafka_venv

root@controlplane ~ ➜  ls -rtlh
total 8.0K
-rw-r--r-- 1 root root   28 Feb 24 11:20 bashrc
drwxr-xr-x 5 root root 4.0K Feb 28 21:07 kafka_venv

root@controlplane ~ ➜  sourc kafka_venv/bin/activate
bash: sourc: command not found

root@controlplane ~ ✖ source kafka_venv/bin/activate

root@controlplane ~ via 🐍 v3.12.3 (kafka_venv) ➜


root@controlplane ~ via 🐍 v3.12.3 (kafka_venv) ➜  pip install kafka-python kafka-python-ng
Collecting kafka-python
  Downloading kafka_python-2.0.5-py2.py3-none-any.whl.metadata (9.0 kB)
Collecting kafka-python-ng
  Downloading kafka_python_ng-2.2.3-py2.py3-none-any.whl.metadata (9.7 kB)
Downloading kafka_python-2.0.5-py2.py3-none-any.whl (251 kB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 251.3/251.3 kB 6.6 MB/s eta 0:00:00
Downloading kafka_python_ng-2.2.3-py2.py3-none-any.whl (232 kB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 232.8/232.8 kB 95.1 MB/s eta 0:00:00
Installing collected packages: kafka-python, kafka-python-ng
Successfully installed kafka-python-2.0.5 kafka-python-ng-2.2.3

root@controlplane ~ via 🐍 v3.12.3 (kafka_venv) ➜





root@controlplane ~ via 🐍 v3.12.3 (kafka_venv) ➜  docker compose up -d
WARN[0000] /root/docker-compose.yml: the attribute `version` is obsolete, it will be ignored, please remove it to avoid potential confusion
[+] Running 19/19
 ✔ kafka Pulled                                                                                                                                       21.8s
   ✔ ed994aa0c3a0 Pull complete                                                                                                                       21.5s
   ✔ 63c5c6ac4b82 Pull complete                                                                                                                       21.5s
 ✔ zookeeper Pulled                                                                                                                                   21.8s
   ✔ 0c03fc0a30d2 Pull complete                                                                                                                        1.6s
   ✔ a53e461e9e28 Pull complete                                                                                                                        1.6s
   ✔ bc83d6c327c5 Pull complete                                                                                                                       19.5s
   ✔ e336f26c7835 Pull complete                                                                                                                       19.5s
   ✔ abbc29366061 Pull complete                                                                                                                       19.6s
   ✔ 8e22e90f45bd Pull complete                                                                                                                       19.6s
   ✔ 7810caa94883 Pull complete                                                                                                                       20.0s
   ✔ 4f43f96556fd Pull complete                                                                                                                       20.1s
   ✔ a40d9f778ceb Pull complete                                                                                                                       20.1s
   ✔ a6c9c7400f0f Pull complete                                                                                                                       20.1s
   ✔ 8ea5736d6359 Pull complete                                                                                                                       20.1s
   ✔ 21b675891935 Pull complete                                                                                                                       20.1s
   ✔ 0e7bc823ab6b Pull complete                                                                                                                       20.1s
   ✔ 6db5499821dc Pull complete                                                                                                                       21.6s
   ✔ f8ec8143b82b Pull complete                                                                                                                       21.6s
[+] Running 3/3
 ✔ Network root_default         Created                                                                                                                0.1s
 ✔ Container admin-zookeeper-1  Started                                                                                                                1.4s
 ✔ Container admin-kafka-1      Started                                                                                                                1.1s

root@controlplane ~ via 🐍 v3.12.3 (kafka_venv) ➜


root@controlplane ~ via 🐍 v3.12.3 (kafka_venv) ➜  docker compose ls
NAME                STATUS              CONFIG FILES
root                running(2)          /root/docker-compose.yml

root@controlplane ~ via 🐍 v3.12.3 (kafka_venv) ➜

root@controlplane ~ via 🐍 v3.12.3 (kafka_venv) ➜  docker container ls
CONTAINER ID   IMAGE                              COMMAND                  CREATED         STATUS         PORTS                                                             NAMES
905b42de6b47   confluentinc/cp-kafka:latest       "/etc/confluent/dock…"   4 minutes ago   Up 4 minutes   0.0.0.0:9092->9092/tcp, [::]:9092->9092/tcp                       admin-kafka-1
665f7ebf17cb   confluentinc/cp-zookeeper:latest   "/etc/confluent/dock…"   4 minutes ago   Up 4 minutes   2888/tcp, 0.0.0.0:2181->2181/tcp, [::]:2181->2181/tcp, 3888/tcp   admin-zookeeper-1

root@controlplane ~ via 🐍 v3.12.3 (kafka_venv) ➜  docker exec admin-kafka-1 kafka-topics \
  --create \
  --topic sample-topic \
  --bootstrap-server localhost:9092 \
  --partitions 1 \
  --replication-factor 1
Created topic sample-topic.

root@controlplane ~ via 🐍 v3.12.3 (kafka_venv) ➜  docker exec admin-kafka-1 kafka-topics   --describ   --topic sample-topic   --bootstrap-server localhost:9092   --partitions
1   --replication-factor 1
describ is not a recognized option
joptsimple.UnrecognizedOptionException: describ is not a recognized option
        at joptsimple.OptionException.unrecognizedOption(OptionException.java:108)
        at joptsimple.OptionParser.handleLongOptionToken(OptionParser.java:510)
        at joptsimple.OptionParserState$2.handleArgument(OptionParserState.java:56)
        at joptsimple.OptionParser.parse(OptionParser.java:396)
        at org.apache.kafka.tools.TopicCommand$TopicCommandOptions.<init>(TopicCommand.java:830)
        at org.apache.kafka.tools.TopicCommand.execute(TopicCommand.java:100)
        at org.apache.kafka.tools.TopicCommand.mainNoExit(TopicCommand.java:90)
        at org.apache.kafka.tools.TopicCommand.main(TopicCommand.java:85)

exit status 1

root@controlplane ~ via 🐍 v3.12.3 (kafka_venv) ✖





root@controlplane ~ via 🐍 v3.12.3 (kafka_venv) ✖ docker exec admin-kafka-1 kafka-topics   --describe   --topic sample-topic   --bootstrap-server localhost:9092
Topic: sample-topic     TopicId: rVartp16RQSqVTplTHl-FQ PartitionCount: 1       ReplicationFactor: 1    Configs:
        Topic: sample-topic     Partition: 0    Leader: 1       Replicas: 1     Isr: 1  Elr: N/A        LastKnownElr: N/A

root@controlplane ~ via 🐍 v3.12.3 (kafka_venv) ➜



root@controlplane ~ via 🐍 v3.12.3 (kafka_venv) ➜  python3 ./python-kafka-producer.py
Produced message: {'timestamp': '2025-02-28 21:34:48', 'value': 88.79}
Produced message: {'timestamp': '2025-02-28 21:34:49', 'value': 89.8}
Produced message: {'timestamp': '2025-02-28 21:34:50', 'value': 90.8}
Produced message: {'timestamp': '2025-02-28 21:34:51', 'value': 91.8}
Produced message: {'timestamp': '2025-02-28 21:34:52', 'value': 92.8}
Produced message: {'timestamp': '2025-02-28 21:34:53', 'value': 93.8}
Produced message: {'timestamp': '2025-02-28 21:34:54', 'value': 94.8}
Produced message: {'timestamp': '2025-02-28 21:34:55', 'value': 95.8}
Produced message: {'timestamp': '2025-02-28 21:34:56', 'value': 96.8}
Produced message: {'timestamp': '2025-02-28 21:34:57', 'value': 97.8}
Produced message: {'timestamp': '2025-02-28 21:34:58', 'value': 98.8}
Produced message: {'timestamp': '2025-02-28 21:34:59', 'value': 99.8}
Produced message: {'timestamp': '2025-02-28 21:35:00', 'value': 0.81}
Produced message: {'timestamp': '2025-02-28 21:35:01', 'value': 1.81}
Produced message: {'timestamp': '2025-02-28 21:35:02', 'value': 2.81}
Produced message: {'timestamp': '2025-02-28 21:35:03', 'value': 3.81}
Produced message: {'timestamp': '2025-02-28 21:35:04', 'value': 4.81}
Produced message: {'timestamp': '2025-02-28 21:35:05', 'value': 5.81}
Produced message: {'timestamp': '2025-02-28 21:35:06', 'value': 6.81}
Produced message: {'timestamp': '2025-02-28 21:35:07', 'value': 7.81}
Produced message: {'timestamp': '2025-02-28 21:35:08', 'value': 8.81}
Produced message: {'timestamp': '2025-02-28 21:35:09', 'value': 9.81}




root@controlplane ~ via 🐍 v3.12.3 (kafka_venv) ➜  python3 ./python-kafka-consumer.py
Received message: {'timestamp': '2025-02-28 21:34:48', 'value': 88.79}
Received message: {'timestamp': '2025-02-28 21:34:49', 'value': 89.8}
Received message: {'timestamp': '2025-02-28 21:34:50', 'value': 90.8}
Received message: {'timestamp': '2025-02-28 21:34:51', 'value': 91.8}
Received message: {'timestamp': '2025-02-28 21:34:52', 'value': 92.8}
Received message: {'timestamp': '2025-02-28 21:34:53', 'value': 93.8}
Received message: {'timestamp': '2025-02-28 21:34:54', 'value': 94.8}
Received message: {'timestamp': '2025-02-28 21:34:55', 'value': 95.8}
Received message: {'timestamp': '2025-02-28 21:34:56', 'value': 96.8}
Received message: {'timestamp': '2025-02-28 21:34:57', 'value': 97.8}
Received message: {'timestamp': '2025-02-28 21:34:58', 'value': 98.8}
Received message: {'timestamp': '2025-02-28 21:34:59', 'value': 99.8}
Received message: {'timestamp': '2025-02-28 21:35:00', 'value': 0.81}
Received message: {'timestamp': '2025-02-28 21:35:01', 'value': 1.81}
Received message: {'timestamp': '2025-02-28 21:35:02', 'value': 2.81}
Received message: {'timestamp': '2025-02-28 21:35:03', 'value': 3.81}





