Producer:

(.venv) bharathkumardasaraju@demo-apache-kafka$ python3.12 ./python-producers-kafka.py
Produced message: {'timestamp': '2025-03-01 09:49:52', 'value': 92.28}
Produced message: {'timestamp': '2025-03-01 09:49:53', 'value': 93.29}
Produced message: {'timestamp': '2025-03-01 09:49:54', 'value': 94.3}
Produced message: {'timestamp': '2025-03-01 09:49:55', 'value': 95.3}
Produced message: {'timestamp': '2025-03-01 09:49:56', 'value': 96.3}
Produced message: {'timestamp': '2025-03-01 09:49:57', 'value': 97.31}
Produced message: {'timestamp': '2025-03-01 09:49:58', 'value': 98.31}
Produced message: {'timestamp': '2025-03-01 09:49:59', 'value': 99.32}
Produced message: {'timestamp': '2025-03-01 09:50:00', 'value': 0.32}
Produced message: {'timestamp': '2025-03-01 09:50:01', 'value': 1.33}
Produced message: {'timestamp': '2025-03-01 09:50:02', 'value': 2.33}
Produced message: {'timestamp': '2025-03-01 09:50:03', 'value': 3.33}
Produced message: {'timestamp': '2025-03-01 09:50:04', 'value': 4.34}
Produced message: {'timestamp': '2025-03-01 09:50:05', 'value': 5.34}
Produced message: {'timestamp': '2025-03-01 09:50:06', 'value': 6.34}
Produced message: {'timestamp': '2025-03-01 09:50:07', 'value': 7.35}
Produced message: {'timestamp': '2025-03-01 09:50:08', 'value': 8.35}
Produced message: {'timestamp': '2025-03-01 09:50:09', 'value': 9.36}
Produced message: {'timestamp': '2025-03-01 09:50:10', 'value': 10.36}
Produced message: {'timestamp': '2025-03-01 09:50:11', 'value': 11.36}
Produced message: {'timestamp': '2025-03-01 09:50:12', 'value': 12.37}
Produced message: {'timestamp': '2025-03-01 09:50:13', 'value': 13.37}
Produced message: {'timestamp': '2025-03-01 09:50:14', 'value': 14.38}
Produced message: {'timestamp': '2025-03-01 09:50:15', 'value': 15.38}
Produced message: {'timestamp': '2025-03-01 09:50:16', 'value': 16.39}
Produced message: {'timestamp': '2025-03-01 09:50:17', 'value': 17.4}
Produced message: {'timestamp': '2025-03-01 09:50:18', 'value': 18.4}
Produced message: {'timestamp': '2025-03-01 09:50:19', 'value': 19.4}
Produced message: {'timestamp': '2025-03-01 09:50:20', 'value': 20.41}
Produced message: {'timestamp': '2025-03-01 09:50:21', 'value': 21.41}
Produced message: {'timestamp': '2025-03-01 09:50:22', 'value': 22.41}
Produced message: {'timestamp': '2025-03-01 09:50:23', 'value': 23.42}
Produced message: {'timestamp': '2025-03-01 09:50:24', 'value': 24.42}
Produced message: {'timestamp': '2025-03-01 09:50:25', 'value': 25.43}
Produced message: {'timestamp': '2025-03-01 09:50:26', 'value': 26.43}
Produced message: {'timestamp': '2025-03-01 09:50:27', 'value': 27.44}
Produced message: {'timestamp': '2025-03-01 09:50:28', 'value': 28.44}
Produced message: {'timestamp': '2025-03-01 09:50:29', 'value': 29.44}
Produced message: {'timestamp': '2025-03-01 09:50:30', 'value': 30.45}
Produced message: {'timestamp': '2025-03-01 09:50:31', 'value': 31.46}
Produced message: {'timestamp': '2025-03-01 09:50:32', 'value': 32.46}
Produced message: {'timestamp': '2025-03-01 09:50:33', 'value': 33.46}
Produced message: {'timestamp': '2025-03-01 09:50:34', 'value': 34.47}
^CStopping producer...
(.venv) bharathkumardasaraju@demo-apache-kafka$



Consumer:

(.venv) bharathkumardasaraju@demo-apache-kafka$ python3.12 ./python-consumers-kafka.py
Received message: {'timestamp': '2025-03-01 09:49:52', 'value': 92.28}
Received message: {'timestamp': '2025-03-01 09:49:53', 'value': 93.29}
Received message: {'timestamp': '2025-03-01 09:49:54', 'value': 94.3}
Received message: {'timestamp': '2025-03-01 09:49:55', 'value': 95.3}
Received message: {'timestamp': '2025-03-01 09:49:56', 'value': 96.3}
Received message: {'timestamp': '2025-03-01 09:49:57', 'value': 97.31}
Received message: {'timestamp': '2025-03-01 09:49:58', 'value': 98.31}
Received message: {'timestamp': '2025-03-01 09:49:59', 'value': 99.32}
Received message: {'timestamp': '2025-03-01 09:50:00', 'value': 0.32}
Received message: {'timestamp': '2025-03-01 09:50:01', 'value': 1.33}
Received message: {'timestamp': '2025-03-01 09:50:02', 'value': 2.33}
Received message: {'timestamp': '2025-03-01 09:50:03', 'value': 3.33}
Received message: {'timestamp': '2025-03-01 09:50:04', 'value': 4.34}
Received message: {'timestamp': '2025-03-01 09:50:05', 'value': 5.34}
Received message: {'timestamp': '2025-03-01 09:50:06', 'value': 6.34}
Received message: {'timestamp': '2025-03-01 09:50:07', 'value': 7.35}
Received message: {'timestamp': '2025-03-01 09:50:08', 'value': 8.35}
Received message: {'timestamp': '2025-03-01 09:50:09', 'value': 9.36}
Received message: {'timestamp': '2025-03-01 09:50:10', 'value': 10.36}
Received message: {'timestamp': '2025-03-01 09:50:11', 'value': 11.36}
Received message: {'timestamp': '2025-03-01 09:50:12', 'value': 12.37}
Received message: {'timestamp': '2025-03-01 09:50:13', 'value': 13.37}
Received message: {'timestamp': '2025-03-01 09:50:14', 'value': 14.38}
Received message: {'timestamp': '2025-03-01 09:50:15', 'value': 15.38}
Received message: {'timestamp': '2025-03-01 09:50:16', 'value': 16.39}
Received message: {'timestamp': '2025-03-01 09:50:17', 'value': 17.4}
Received message: {'timestamp': '2025-03-01 09:50:18', 'value': 18.4}
Received message: {'timestamp': '2025-03-01 09:50:19', 'value': 19.4}
Received message: {'timestamp': '2025-03-01 09:50:20', 'value': 20.41}
Received message: {'timestamp': '2025-03-01 09:50:21', 'value': 21.41}
Received message: {'timestamp': '2025-03-01 09:50:22', 'value': 22.41}
Received message: {'timestamp': '2025-03-01 09:50:23', 'value': 23.42}
Received message: {'timestamp': '2025-03-01 09:50:24', 'value': 24.42}
Received message: {'timestamp': '2025-03-01 09:50:25', 'value': 25.43}
Received message: {'timestamp': '2025-03-01 09:50:26', 'value': 26.43}
Received message: {'timestamp': '2025-03-01 09:50:27', 'value': 27.44}
Received message: {'timestamp': '2025-03-01 09:50:28', 'value': 28.44}
Received message: {'timestamp': '2025-03-01 09:50:29', 'value': 29.44}
Received message: {'timestamp': '2025-03-01 09:50:30', 'value': 30.45}
Received message: {'timestamp': '2025-03-01 09:50:31', 'value': 31.46}
Received message: {'timestamp': '2025-03-01 09:50:32', 'value': 32.46}
Received message: {'timestamp': '2025-03-01 09:50:33', 'value': 33.46}
Received message: {'timestamp': '2025-03-01 09:50:34', 'value': 34.47}
^CStopping consumer...
(.venv) bharathkumardasaraju@demo-apache-kafka$

