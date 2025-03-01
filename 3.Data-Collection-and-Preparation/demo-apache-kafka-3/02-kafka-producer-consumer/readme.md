# Kafka Setup on Ubuntu

This guide provides step-by-step instructions for setting up a single-node Kafka cluster on an Ubuntu instance.
Machine type ***t2.medium***

## Commands & Explanation

```bash
2  sudo apt update
```

* Updates the package lists for upgrades and new package installations.

```bash
3  sudo apt install default-jdk -y
```

* Installs the default Java Development Kit (JDK), required for running Kafka. The `-y` flag automatically answers "yes" to any prompts.

```bash
4  java -version
```

* Verifies the installed Java version.

```bash
5  cd /opt
```

* Changes the current working directory to `/opt`, a common location for installing optional software.

```bash
6  sudo wget https://downloads.apache.org/kafka/3.8.0/kafka_2.12-3.8.0.tgz
```

* Downloads the Kafka distribution archive (version 3.8.0) using `wget`.

```bash
7  sudo tar -xvzf kafka_2.12-3.8.0.tgz
```

* Extracts the downloaded Kafka archive.

```bash
8  sudo mv kafka_2.12-3.8.0 /usr/local/kafka
```

* Moves the extracted Kafka directory to `/usr/local/kafka`, a standard location for installing Kafka.

```bash
9  cd /usr/local/kafka
```

* Changes the current working directory to the Kafka installation directory.

```bash
10 sudo nohup bin/zookeeper-server-start.sh config/zookeeper.properties > /tmp/zookeeper.log 2>&1 &
```

* Starts the ZooKeeper server in the background. 
    * `nohup` ensures the process continues running even if the terminal is closed. 
    * `>` redirects standard output to `/tmp/zookeeper.log`. 
    * `2>&1` redirects standard error to the same file as standard output.
    * `&` runs the command in the background.

```bash
11 sudo nohup bin/kafka-server-start.sh config/server.properties > /tmp/kafka.log 2>&1 &
```

* Starts the Kafka server in the background, similar to how ZooKeeper was started.

```bash
12 tail -100f /tmp/kafka.log
```

* Displays the last 100 lines of the Kafka log file, useful for monitoring the server startup process.

```bash
13 sudo bin/kafka-topics.sh --list --bootstrap-server localhost:9092
```

* Lists existing Kafka topics using the local Kafka broker running on `localhost:9092`.

```bash
14 sudo bin/kafka-topics.sh --create --topic test-topic --bootstrap-server 3.64.165.242:9092 --partitions 1 --replication-factor 1
```

* **Likely incorrect**: Attempts to create a topic named `test-topic` on a remote Kafka broker (specified by the external IP address), which would typically require additional configuration.

```bash
15 sudo bin/kafka-topics.sh --create --topic test-topic --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1
```

* Creates a topic named `test-topic` on the local Kafka broker with one partition and a replication factor of 1.

```bash
16 sudo bin/kafka-topics.sh --list --bootstrap-server localhost:9092
```

* Lists Kafka topics again to confirm the creation of `test-topic`.

```bash
17 sudo bin/kafka-console-producer.sh --topic test-topic --bootstrap-server localhost:9092
```

```bash
sudo apt update
sudo apt install default-jdk -y
java -version
cd /opt
sudo wget https://downloads.apache.org/kafka/3.8.0/kafka_2.12-3.8.0.tgz
sudo tar -xvzf kafka_2.12-3.8.0.tgz
sudo mv kafka_2.12-3.8.0 /usr/local/kafka
cd /usr/local/kafka
sudo nohup bin/zookeeper-server-start.sh config/zookeeper.properties > /tmp/zookeeper.log 2>&1 &
sudo nohup bin/kafka-server-start.sh config/server.properties > /tmp/kafka.log 2>&1 &
tail -100f /tmp/kafka.log
sudo bin/kafka-topics.sh --list --bootstrap-server localhost:9092
sudo bin/kafka-topics.sh --create --topic test-topic --bootstrap-server 3.64.165.242:9092 --partitions 1 --replication-factor 1
sudo bin/kafka-topics.sh --create --topic test-topic --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1
sudo bin/kafka-topics.sh --list --bootstrap-server localhost:9092
sudo bin/kafka-console-producer.sh --topic test-topic --bootstrap-server localhost:9092
history
```

* Install pip and confluent package on ubuntu 

```bash
apt install python3-pip
apt install python3-confluent-kafka
```
