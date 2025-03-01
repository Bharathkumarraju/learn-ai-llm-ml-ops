Data Pipeline:
  1. Scrapper Public Data
  2. Store Data in S3
  3. Transform the data
  4. Store it in a presentation layer.

Tools like Apache Airflow (and) perfect inorder to centralize the data pipline management

 Apache Airflow: https://airflow.apache.org/
 Perfect: https://www.prefect.io/



(.venv) bharathkumardasaraju@Data-Pipeline-Orchestration-Airflow$ curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.10.2/docker-compose.yaml'
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 11342  100 11342    0     0   372k      0 --:--:-- --:--:-- --:--:--  381k
(.venv) bharathkumardasaraju@Data-Pipeline-Orchestration-Airflow$ ls -rtlh
total 504
-rw-r--r--@ 1 bharathkumardasaraju  staff   233K Mar  2 06:07 data-pipeline-airflow.png
-rw-r--r--@ 1 bharathkumardasaraju  staff   309B Mar  2 06:10 1.demo.sh
-rw-r--r--@ 1 bharathkumardasaraju  staff    11K Mar  2 06:14 docker-compose.yaml
(.venv) bharathkumardasaraju@Data-Pipeline-Orchestration-Airflow$



(.venv) bharathkumardasaraju@Data-Pipeline-Orchestration-Airflow$ ls -rtlh
total 504
-rw-r--r--@ 1 bharathkumardasaraju  staff   233K Mar  2 06:07 data-pipeline-airflow.png
-rw-r--r--@ 1 bharathkumardasaraju  staff   309B Mar  2 06:10 1.demo.sh
-rw-r--r--@ 1 bharathkumardasaraju  staff    11K Mar  2 06:14 docker-compose.yaml
(.venv) bharathkumardasaraju@Data-Pipeline-Orchestration-Airflow$ mkdir -p ./dags ./logs ./plugins ./config
(.venv) bharathkumardasaraju@Data-Pipeline-Orchestration-Airflow$ id -u
501
(.venv) bharathkumardasaraju@Data-Pipeline-Orchestration-Airflow$ echo -e "AIRFLOW_UID=$(id -u)" > .env
(.venv) bharathkumardasaraju@Data-Pipeline-Orchestration-Airflow$

(.venv) bharathkumardasaraju@Data-Pipeline-Orchestration-Airflow$ ls -rtlh
total 504
-rw-r--r--@ 1 bharathkumardasaraju  staff   233K Mar  2 06:07 data-pipeline-airflow.png
-rw-r--r--@ 1 bharathkumardasaraju  staff    11K Mar  2 06:14 docker-compose.yaml
-rw-r--r--@ 1 bharathkumardasaraju  staff   1.1K Mar  2 06:14 1.demo.sh
drwxr-xr-x@ 2 bharathkumardasaraju  staff    64B Mar  2 06:15 dags
drwxr-xr-x@ 2 bharathkumardasaraju  staff    64B Mar  2 06:15 logs
drwxr-xr-x@ 2 bharathkumardasaraju  staff    64B Mar  2 06:15 plugins
drwxr-xr-x@ 2 bharathkumardasaraju  staff    64B Mar  2 06:15 config
(.venv) bharathkumardasaraju@Data-Pipeline-Orchestration-Airflow$


(.venv) bharathkumardasaraju@Data-Pipeline-Orchestration-Airflow$ docker compose up airflow-init
[+] Running 44/3
 ✔ postgres Pulled                                                                                                                                                                                           15.5s
 ✔ redis Pulled                                                                                                                                                                                              27.4s
 ✔ airflow-init Pulled                                                                                                                                                                                       36.6s
[+] Running 5/5
 ✔ Network data-pipeline-orchestration-airflow_default              Created                                                                                                                                   0.0s
 ✔ Volume "data-pipeline-orchestration-airflow_postgres-db-volume"  Created                                                                                                                                   0.0s
 ✔ Container data-pipeline-orchestration-airflow-postgres-1         Created                                                                                                                                   0.1s
 ✔ Container data-pipeline-orchestration-airflow-redis-1            Created                                                                                                                                   0.1s
 ✔ Container data-pipeline-orchestration-airflow-airflow-init-1     Created                                                                                                                                   0.1s
Attaching to airflow-init-1
airflow-init-1  | The container is run as root user. For security, consider using a regular user account.
airflow-init-1  |
airflow-init-1  | DB: postgresql+psycopg2://airflow:***@postgres/airflow
airflow-init-1  | Performing upgrade to the metadata database postgresql+psycopg2://airflow:***@postgres/airflow
airflow-init-1  | [2025-03-01T22:20:03.451+0000] {migration.py:215} INFO - Context impl PostgresqlImpl.
airflow-init-1  | [2025-03-01T22:20:03.452+0000] {migration.py:218} INFO - Will assume transactional DDL.
airflow-init-1  | [2025-03-01T22:20:03.453+0000] {migration.py:215} INFO - Context impl PostgresqlImpl.
airflow-init-1  | [2025-03-01T22:20:03.453+0000] {migration.py:218} INFO - Will assume transactional DDL.
airflow-init-1  | INFO  [alembic.runtime.migration] Context impl PostgresqlImpl.
airflow-init-1  | INFO  [alembic.runtime.migration] Will assume transactional DDL.
airflow-init-1  | INFO  [alembic.runtime.migration] Running stamp_revision  -> 22ed7efa9da2
airflow-init-1  | Database migrating done!
airflow-init-1  | /home/airflow/.local/lib/python3.12/site-packages/flask_limiter/extension.py:333 UserWarning: Using the in-memory storage for tracking rate limits as no storage was explicitly specified. This is not recommended for production use. See: https://flask-limiter.readthedocs.io#configuring-a-storage-backend for documentation about configuring the storage backend.
airflow-init-1  | [2025-03-01T22:20:04.998+0000] {override.py:1496} INFO - Inserted Role: Admin
airflow-init-1  | [2025-03-01T22:20:05.000+0000] {override.py:1496} INFO - Inserted Role: Public
airflow-init-1  | [2025-03-01T22:20:05.002+0000] {override.py:960} WARNING - No user yet created, use flask fab command to do it.
airflow-init-1  | [2025-03-01T22:20:05.031+0000] {override.py:1900} INFO - Created Permission View: can edit on Passwords
airflow-init-1  | [2025-03-01T22:20:05.034+0000] {override.py:1951} INFO - Added Permission can edit on Passwords to role Admin
airflow-init-1  | [2025-03-01T22:20:05.036+0000] {override.py:1900} INFO - Created Permission View: can read on Passwords
airflow-init-1  | [2025-03-01T22:20:05.037+0000] {override.py:1951} INFO - Added Permission can read on Passwords to role Admin
airflow-init-1  | [2025-03-01T22:20:05.042+0000] {override.py:1900} INFO - Created Permission View: can edit on My Password
airflow-init-1  | [2025-03-01T22:20:05.044+0000] {override.py:1951} INFO - Added Permission can edit on My Password to role Admin
airflow-init-1  | [2025-03-01T22:20:05.046+0000] {override.py:1900} INFO - Created Permission View: can read on My Password
airflow-init-1  | [2025-03-01T22:20:05.048+0000] {override.py:1951} INFO - Added Permission can read on My Password to role Admin
airflow-init-1  | [2025-03-01T22:20:05.053+0000] {override.py:1900} INFO - Created Permission View: can edit on My Profile
airflow-init-1  | [2025-03-01T22:20:05.055+0000] {override.py:1951} INFO - Added Permission can edit on My Profile to role Admin
airflow-init-1  | [2025-03-01T22:20:05.057+0000] {override.py:1900} INFO - Created Permission View: can read on My Profile
airflow-init-1  | [2025-03-01T22:20:05.058+0000] {override.py:1951} INFO - Added Permission can read on My Profile to role Admin
airflow-init-1  | [2025-03-01T22:20:05.072+0000] {override.py:1900} INFO - Created Permission View: can create on Users
airflow-init-1  | [2025-03-01T22:20:05.074+0000] {override.py:1951} INFO - Added Permission can create on Users to role Admin
airflow-init-1  | [2025-03-01T22:20:05.076+0000] {override.py:1900} INFO - Created Permission View: can read on Users
airflow-init-1  | [2025-03-01T22:20:05.078+0000] {override.py:1951} INFO - Added Permission can read on Users to role Admin
airflow-init-1  | [2025-03-01T22:20:05.080+0000] {override.py:1900} INFO - Created Permission View: can edit on Users
airflow-init-1  | [2025-03-01T22:20:05.082+0000] {override.py:1951} INFO - Added Permission can edit on Users to role Admin
airflow-init-1  | [2025-03-01T22:20:05.085+0000] {override.py:1900} INFO - Created Permission View: can delete on Users
airflow-init-1  | [2025-03-01T22:20:05.087+0000] {override.py:1951} INFO - Added Permission can delete on Users to role Admin
airflow-init-1  | [2025-03-01T22:20:05.091+0000] {override.py:1900} INFO - Created Permission View: menu access on List Users
airflow-init-1  | [2025-03-01T22:20:05.093+0000] {override.py:1951} INFO - Added Permission menu access on List Users to role Admin
airflow-init-1  | [2025-03-01T22:20:05.097+0000] {override.py:1900} INFO - Created Permission View: menu access on Security
airflow-init-1  | [2025-03-01T22:20:05.098+0000] {override.py:1951} INFO - Added Permission menu access on Security to role Admin
airflow-init-1  | [2025-03-01T22:20:05.108+0000] {override.py:1900} INFO - Created Permission View: can create on Roles
airflow-init-1  | [2025-03-01T22:20:05.109+0000] {override.py:1951} INFO - Added Permission can create on Roles to role Admin
airflow-init-1  | [2025-03-01T22:20:05.112+0000] {override.py:1900} INFO - Created Permission View: can read on Roles
airflow-init-1  | [2025-03-01T22:20:05.115+0000] {override.py:1951} INFO - Added Permission can read on Roles to role Admin
airflow-init-1  | [2025-03-01T22:20:05.117+0000] {override.py:1900} INFO - Created Permission View: can edit on Roles
airflow-init-1  | [2025-03-01T22:20:05.119+0000] {override.py:1951} INFO - Added Permission can edit on Roles to role Admin
airflow-init-1  | [2025-03-01T22:20:05.121+0000] {override.py:1900} INFO - Created Permission View: can delete on Roles
airflow-init-1  | [2025-03-01T22:20:05.123+0000] {override.py:1951} INFO - Added Permission can delete on Roles to role Admin
airflow-init-1  | [2025-03-01T22:20:05.127+0000] {override.py:1900} INFO - Created Permission View: menu access on List Roles
airflow-init-1  | [2025-03-01T22:20:05.129+0000] {override.py:1951} INFO - Added Permission menu access on List Roles to role Admin
airflow-init-1  | [2025-03-01T22:20:05.138+0000] {override.py:1900} INFO - Created Permission View: can read on User Stats Chart
airflow-init-1  | [2025-03-01T22:20:05.141+0000] {override.py:1951} INFO - Added Permission can read on User Stats Chart to role Admin
airflow-init-1  | [2025-03-01T22:20:05.145+0000] {override.py:1900} INFO - Created Permission View: menu access on User's Statistics
airflow-init-1  | [2025-03-01T22:20:05.148+0000] {override.py:1951} INFO - Added Permission menu access on User's Statistics to role Admin
airflow-init-1  | [2025-03-01T22:20:05.159+0000] {override.py:1900} INFO - Created Permission View: can read on Permissions
airflow-init-1  | [2025-03-01T22:20:05.161+0000] {override.py:1951} INFO - Added Permission can read on Permissions to role Admin
airflow-init-1  | [2025-03-01T22:20:05.164+0000] {override.py:1900} INFO - Created Permission View: menu access on Actions
airflow-init-1  | [2025-03-01T22:20:05.166+0000] {override.py:1951} INFO - Added Permission menu access on Actions to role Admin
airflow-init-1  | [2025-03-01T22:20:05.180+0000] {override.py:1900} INFO - Created Permission View: can read on View Menus
airflow-init-1  | [2025-03-01T22:20:05.182+0000] {override.py:1951} INFO - Added Permission can read on View Menus to role Admin
airflow-init-1  | [2025-03-01T22:20:05.186+0000] {override.py:1900} INFO - Created Permission View: menu access on Resources
airflow-init-1  | [2025-03-01T22:20:05.189+0000] {override.py:1951} INFO - Added Permission menu access on Resources to role Admin
airflow-init-1  | [2025-03-01T22:20:05.199+0000] {override.py:1900} INFO - Created Permission View: can read on Permission Views
airflow-init-1  | [2025-03-01T22:20:05.201+0000] {override.py:1951} INFO - Added Permission can read on Permission Views to role Admin
airflow-init-1  | [2025-03-01T22:20:05.206+0000] {override.py:1900} INFO - Created Permission View: menu access on Permission Pairs
airflow-init-1  | [2025-03-01T22:20:05.208+0000] {override.py:1951} INFO - Added Permission menu access on Permission Pairs to role Admin
airflow-init-1  | [2025-03-01T22:20:06.686+0000] {override.py:1585} INFO - Added user airflow
airflow-init-1  | User "airflow" created with role "Admin"
airflow-init-1  | 2.10.2
airflow-init-1 exited with code 0
(.venv) bharathkumardasaraju@Data-Pipeline-Orchestration-Airflow$



