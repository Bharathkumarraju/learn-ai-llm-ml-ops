root@controlplane ~ ➜  mkdir 
mkdir: missing operand
Try 'mkdir --help' for more information.

root@controlplane ~ ✖ mkdir ~/example-orchestration

root@controlplane ~ ➜  cd ~/example-orchestration

root@controlplane ~/example-orchestration ➜  curl -LfO https://airflow.apache.org/docs/apache-airflow/2.10.2/docker-compose.yaml
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 11342  100 11342    0     0  58963      0 --:--:-- --:--:-- --:--:-- 58766

root@controlplane ~/example-orchestration ➜  mkdir -p ./dags ./logs ./plugins ./config 

root@controlplane ~/example-orchestration ➜  echo -e "AIRFLOW_UID=$(id -u)" > .env

root@controlplane ~/example-orchestration ➜  docker compose up airflow-init
[+] Running 44/44
 ✔ airflow-init Pulled                                                                                                                                                          20.9s 
 ✔ redis Pulled                                                                                                                                                                  2.9s 
 ✔ postgres Pulled                                                                                                                                                               6.4s 
[+] Running 5/5
 ✔ Network example-orchestration_default              Created                                                                                                                    0.1s 
 ✔ Volume "example-orchestration_postgres-db-volume"  Created                                                                                                                    0.0s 
 ✔ Container example-orchestration-redis-1            Created                                                                                                                    2.7s 
 ✔ Container example-orchestration-postgres-1         Created                                                                                                                    2.7s 
 ✔ Container example-orchestration-airflow-init-1     Created                                                                                                                    0.0s 
Attaching to airflow-init-1
airflow-init-1  | The container is run as root user. For security, consider using a regular user account.
airflow-init-1  | 
airflow-init-1  | DB: postgresql+psycopg2://airflow:***@postgres/airflow
airflow-init-1  | Performing upgrade to the metadata database postgresql+psycopg2://airflow:***@postgres/airflow
airflow-init-1  | [2025-03-01T22:56:16.681+0000] {migration.py:215} INFO - Context impl PostgresqlImpl.
airflow-init-1  | [2025-03-01T22:56:16.682+0000] {migration.py:218} INFO - Will assume transactional DDL.
airflow-init-1  | [2025-03-01T22:56:16.684+0000] {migration.py:215} INFO - Context impl PostgresqlImpl.
airflow-init-1  | [2025-03-01T22:56:16.685+0000] {migration.py:218} INFO - Will assume transactional DDL.
airflow-init-1  | INFO  [alembic.runtime.migration] Context impl PostgresqlImpl.
airflow-init-1  | INFO  [alembic.runtime.migration] Will assume transactional DDL.
airflow-init-1  | INFO  [alembic.runtime.migration] Running stamp_revision  -> 22ed7efa9da2
airflow-init-1  | Database migrating done!
airflow-init-1  | /home/airflow/.local/lib/python3.12/site-packages/flask_limiter/extension.py:333 UserWarning: Using the in-memory storage for tracking rate limits as no storage was explicitly specified. This is not recommended for production use. See: https://flask-limiter.readthedocs.io#configuring-a-storage-backend for documentation about configuring the storage backend.
airflow-init-1  | [2025-03-01T22:56:20.397+0000] {override.py:1496} INFO - Inserted Role: Admin
airflow-init-1  | [2025-03-01T22:56:20.402+0000] {override.py:1496} INFO - Inserted Role: Public
airflow-init-1  | [2025-03-01T22:56:20.405+0000] {override.py:960} WARNING - No user yet created, use flask fab command to do it.
airflow-init-1  | [2025-03-01T22:56:20.443+0000] {override.py:1900} INFO - Created Permission View: can edit on Passwords
airflow-init-1  | [2025-03-01T22:56:20.448+0000] {override.py:1951} INFO - Added Permission can edit on Passwords to role Admin
airflow-init-1  | [2025-03-01T22:56:20.454+0000] {override.py:1900} INFO - Created Permission View: can read on Passwords
airflow-init-1  | [2025-03-01T22:56:20.458+0000] {override.py:1951} INFO - Added Permission can read on Passwords to role Admin
airflow-init-1  | [2025-03-01T22:56:20.473+0000] {override.py:1900} INFO - Created Permission View: can edit on My Password
airflow-init-1  | [2025-03-01T22:56:20.478+0000] {override.py:1951} INFO - Added Permission can edit on My Password to role Admin
airflow-init-1  | [2025-03-01T22:56:20.484+0000] {override.py:1900} INFO - Created Permission View: can read on My Password
airflow-init-1  | [2025-03-01T22:56:20.488+0000] {override.py:1951} INFO - Added Permission can read on My Password to role Admin
airflow-init-1  | [2025-03-01T22:56:20.499+0000] {override.py:1900} INFO - Created Permission View: can edit on My Profile
airflow-init-1  | [2025-03-01T22:56:20.504+0000] {override.py:1951} INFO - Added Permission can edit on My Profile to role Admin
airflow-init-1  | [2025-03-01T22:56:20.510+0000] {override.py:1900} INFO - Created Permission View: can read on My Profile
airflow-init-1  | [2025-03-01T22:56:20.515+0000] {override.py:1951} INFO - Added Permission can read on My Profile to role Admin
airflow-init-1  | [2025-03-01T22:56:20.551+0000] {override.py:1900} INFO - Created Permission View: can create on Users
airflow-init-1  | [2025-03-01T22:56:20.556+0000] {override.py:1951} INFO - Added Permission can create on Users to role Admin
airflow-init-1  | [2025-03-01T22:56:20.561+0000] {override.py:1900} INFO - Created Permission View: can read on Users
airflow-init-1  | [2025-03-01T22:56:20.565+0000] {override.py:1951} INFO - Added Permission can read on Users to role Admin
airflow-init-1  | [2025-03-01T22:56:20.571+0000] {override.py:1900} INFO - Created Permission View: can edit on Users
airflow-init-1  | [2025-03-01T22:56:20.576+0000] {override.py:1951} INFO - Added Permission can edit on Users to role Admin
airflow-init-1  | [2025-03-01T22:56:20.581+0000] {override.py:1900} INFO - Created Permission View: can delete on Users
airflow-init-1  | [2025-03-01T22:56:20.586+0000] {override.py:1951} INFO - Added Permission can delete on Users to role Admin
airflow-init-1  | [2025-03-01T22:56:20.594+0000] {override.py:1900} INFO - Created Permission View: menu access on List Users
airflow-init-1  | [2025-03-01T22:56:20.598+0000] {override.py:1951} INFO - Added Permission menu access on List Users to role Admin
airflow-init-1  | [2025-03-01T22:56:20.609+0000] {override.py:1900} INFO - Created Permission View: menu access on Security
airflow-init-1  | [2025-03-01T22:56:20.614+0000] {override.py:1951} INFO - Added Permission menu access on Security to role Admin
airflow-init-1  | [2025-03-01T22:56:20.642+0000] {override.py:1900} INFO - Created Permission View: can create on Roles
airflow-init-1  | [2025-03-01T22:56:20.646+0000] {override.py:1951} INFO - Added Permission can create on Roles to role Admin
airflow-init-1  | [2025-03-01T22:56:20.652+0000] {override.py:1900} INFO - Created Permission View: can read on Roles
airflow-init-1  | [2025-03-01T22:56:20.656+0000] {override.py:1951} INFO - Added Permission can read on Roles to role Admin
airflow-init-1  | [2025-03-01T22:56:20.662+0000] {override.py:1900} INFO - Created Permission View: can edit on Roles
airflow-init-1  | [2025-03-01T22:56:20.666+0000] {override.py:1951} INFO - Added Permission can edit on Roles to role Admin
airflow-init-1  | [2025-03-01T22:56:20.671+0000] {override.py:1900} INFO - Created Permission View: can delete on Roles
airflow-init-1  | [2025-03-01T22:56:20.676+0000] {override.py:1951} INFO - Added Permission can delete on Roles to role Admin
airflow-init-1  | [2025-03-01T22:56:20.687+0000] {override.py:1900} INFO - Created Permission View: menu access on List Roles
airflow-init-1  | [2025-03-01T22:56:20.691+0000] {override.py:1951} INFO - Added Permission menu access on List Roles to role Admin
airflow-init-1  | [2025-03-01T22:56:20.718+0000] {override.py:1900} INFO - Created Permission View: can read on User Stats Chart
airflow-init-1  | [2025-03-01T22:56:20.723+0000] {override.py:1951} INFO - Added Permission can read on User Stats Chart to role Admin
airflow-init-1  | [2025-03-01T22:56:20.734+0000] {override.py:1900} INFO - Created Permission View: menu access on User's Statistics
airflow-init-1  | [2025-03-01T22:56:20.738+0000] {override.py:1951} INFO - Added Permission menu access on User's Statistics to role Admin
airflow-init-1  | [2025-03-01T22:56:20.773+0000] {override.py:1900} INFO - Created Permission View: can read on Permissions
airflow-init-1  | [2025-03-01T22:56:20.777+0000] {override.py:1951} INFO - Added Permission can read on Permissions to role Admin
airflow-init-1  | [2025-03-01T22:56:20.788+0000] {override.py:1900} INFO - Created Permission View: menu access on Actions
airflow-init-1  | [2025-03-01T22:56:20.793+0000] {override.py:1951} INFO - Added Permission menu access on Actions to role Admin
airflow-init-1  | [2025-03-01T22:56:20.824+0000] {override.py:1900} INFO - Created Permission View: can read on View Menus
airflow-init-1  | [2025-03-01T22:56:20.829+0000] {override.py:1951} INFO - Added Permission can read on View Menus to role Admin
airflow-init-1  | [2025-03-01T22:56:20.840+0000] {override.py:1900} INFO - Created Permission View: menu access on Resources
airflow-init-1  | [2025-03-01T22:56:20.844+0000] {override.py:1951} INFO - Added Permission menu access on Resources to role Admin
airflow-init-1  | [2025-03-01T22:56:20.879+0000] {override.py:1900} INFO - Created Permission View: can read on Permission Views
airflow-init-1  | [2025-03-01T22:56:20.884+0000] {override.py:1951} INFO - Added Permission can read on Permission Views to role Admin
airflow-init-1  | [2025-03-01T22:56:20.895+0000] {override.py:1900} INFO - Created Permission View: menu access on Permission Pairs
airflow-init-1  | [2025-03-01T22:56:20.900+0000] {override.py:1951} INFO - Added Permission menu access on Permission Pairs to role Admin
airflow-init-1  | [2025-03-01T22:56:23.809+0000] {override.py:1585} INFO - Added user airflow
airflow-init-1  | User "airflow" created with role "Admin"
airflow-init-1  | 2.10.2
airflow-init-1 exited with code 0

root@controlplane ~/example-orchestration ➜  docker compose up -d
[+] Running 7/7
 ✔ Container example-orchestration-redis-1              Healthy                                                                                                                  1.4s 
 ✔ Container example-orchestration-postgres-1           Healthy                                                                                                                  1.4s 
 ✔ Container example-orchestration-airflow-init-1       Exited                                                                                                                  13.4s 
 ✔ Container example-orchestration-airflow-webserver-1  Started                                                                                                                 14.0s 
 ✔ Container example-orchestration-airflow-scheduler-1  Started                                                                                                                 14.0s 
 ✔ Container example-orchestration-airflow-worker-1     Started                                                                                                                 13.9s 
 ✔ Container example-orchestration-airflow-triggerer-1  Started                                                                                                                 13.9s 

root@controlplane ~/example-orchestration ➜  docker compose up -d
[+] Running 7/7
 ✔ Container example-orchestration-postgres-1           Healthy                                                                                                                  1.4s 
 ✔ Container example-orchestration-redis-1              Healthy                                                                                                                  1.4s 
 ✔ Container example-orchestration-airflow-init-1       Exited                                                                                                                  13.4s 
 ✔ Container example-orchestration-airflow-triggerer-1  Running                                                                                                                  0.0s 
 ✔ Container example-orchestration-airflow-scheduler-1  Running                                                                                                                  0.0s 
 ✔ Container example-orchestration-airflow-worker-1     Running                                                                                                                  0.0s 
 ✔ Container example-orchestration-airflow-webserver-1  Running                                                                                                                  0.0s 

root@controlplane ~/example-orchestration ➜  docker logs -f example-orchestration-airflow-webserver-1
The container is run as root user. For security, consider using a regular user account.

[2025-03-01T22:57:03.383+0000] {configuration.py:2096} INFO - Creating new FAB webserver config file in: /opt/airflow/webserver_config.py
/home/airflow/.local/lib/python3.12/site-packages/flask_limiter/extension.py:333 UserWarning: Using the in-memory storage for tracking rate limits as no storage was explicitly specified. This is not recommended for production use. See: https://flask-limiter.readthedocs.io#configuring-a-storage-backend for documentation about configuring the storage backend.
[2025-03-01T22:57:07.883+0000] {override.py:1900} INFO - Created Permission View: can create on DAG Runs
[2025-03-01T22:57:07.891+0000] {override.py:1951} INFO - Added Permission can create on DAG Runs to role Admin
[2025-03-01T22:57:07.899+0000] {override.py:1900} INFO - Created Permission View: can read on DAG Runs
[2025-03-01T22:57:07.905+0000] {override.py:1951} INFO - Added Permission can read on DAG Runs to role Admin
[2025-03-01T22:57:07.911+0000] {override.py:1900} INFO - Created Permission View: can edit on DAG Runs
[2025-03-01T22:57:07.915+0000] {override.py:1951} INFO - Added Permission can edit on DAG Runs to role Admin
[2025-03-01T22:57:07.920+0000] {override.py:1900} INFO - Created Permission View: can delete on DAG Runs
[2025-03-01T22:57:07.925+0000] {override.py:1951} INFO - Added Permission can delete on DAG Runs to role Admin
[2025-03-01T22:57:07.931+0000] {override.py:1900} INFO - Created Permission View: menu access on DAG Runs
[2025-03-01T22:57:07.935+0000] {override.py:1951} INFO - Added Permission menu access on DAG Runs to role Admin
[2025-03-01T22:57:07.951+0000] {override.py:1900} INFO - Created Permission View: menu access on Browse
[2025-03-01T22:57:07.956+0000] {override.py:1951} INFO - Added Permission menu access on Browse to role Admin
[2025-03-01T22:57:07.987+0000] {override.py:1900} INFO - Created Permission View: can read on Jobs
[2025-03-01T22:57:07.992+0000] {override.py:1951} INFO - Added Permission can read on Jobs to role Admin
[2025-03-01T22:57:07.999+0000] {override.py:1900} INFO - Created Permission View: menu access on Jobs
[2025-03-01T22:57:08.005+0000] {override.py:1951} INFO - Added Permission menu access on Jobs to role Admin
[2025-03-01T22:57:08.056+0000] {override.py:1900} INFO - Created Permission View: can read on Audit Logs
[2025-03-01T22:57:08.062+0000] {override.py:1951} INFO - Added Permission can read on Audit Logs to role Admin
[2025-03-01T22:57:08.069+0000] {override.py:1900} INFO - Created Permission View: menu access on Audit Logs
[2025-03-01T22:57:08.074+0000] {override.py:1951} INFO - Added Permission menu access on Audit Logs to role Admin
[2025-03-01T22:57:08.119+0000] {override.py:1900} INFO - Created Permission View: can create on Variables
[2025-03-01T22:57:08.124+0000] {override.py:1951} INFO - Added Permission can create on Variables to role Admin
[2025-03-01T22:57:08.129+0000] {override.py:1900} INFO - Created Permission View: can read on Variables
[2025-03-01T22:57:08.134+0000] {override.py:1951} INFO - Added Permission can read on Variables to role Admin
[2025-03-01T22:57:08.140+0000] {override.py:1900} INFO - Created Permission View: can edit on Variables
[2025-03-01T22:57:08.145+0000] {override.py:1951} INFO - Added Permission can edit on Variables to role Admin
[2025-03-01T22:57:08.151+0000] {override.py:1900} INFO - Created Permission View: can delete on Variables
[2025-03-01T22:57:08.157+0000] {override.py:1951} INFO - Added Permission can delete on Variables to role Admin
[2025-03-01T22:57:08.163+0000] {override.py:1900} INFO - Created Permission View: menu access on Variables
[2025-03-01T22:57:08.168+0000] {override.py:1951} INFO - Added Permission menu access on Variables to role Admin
[2025-03-01T22:57:08.185+0000] {override.py:1900} INFO - Created Permission View: menu access on Admin
[2025-03-01T22:57:08.191+0000] {override.py:1951} INFO - Added Permission menu access on Admin to role Admin
[2025-03-01T22:57:08.220+0000] {override.py:1900} INFO - Created Permission View: can create on Task Instances
[2025-03-01T22:57:08.225+0000] {override.py:1951} INFO - Added Permission can create on Task Instances to role Admin
[2025-03-01T22:57:08.230+0000] {override.py:1900} INFO - Created Permission View: can read on Task Instances
[2025-03-01T22:57:08.235+0000] {override.py:1951} INFO - Added Permission can read on Task Instances to role Admin
[2025-03-01T22:57:08.241+0000] {override.py:1900} INFO - Created Permission View: can edit on Task Instances
[2025-03-01T22:57:08.247+0000] {override.py:1951} INFO - Added Permission can edit on Task Instances to role Admin
[2025-03-01T22:57:08.253+0000] {override.py:1900} INFO - Created Permission View: can delete on Task Instances
[2025-03-01T22:57:08.258+0000] {override.py:1951} INFO - Added Permission can delete on Task Instances to role Admin
[2025-03-01T22:57:08.264+0000] {override.py:1900} INFO - Created Permission View: menu access on Task Instances
[2025-03-01T22:57:08.269+0000] {override.py:1951} INFO - Added Permission menu access on Task Instances to role Admin
[2025-03-01T22:57:08.312+0000] {override.py:1900} INFO - Created Permission View: can read on Task Reschedules
[2025-03-01T22:57:08.318+0000] {override.py:1951} INFO - Added Permission can read on Task Reschedules to role Admin
[2025-03-01T22:57:08.324+0000] {override.py:1900} INFO - Created Permission View: menu access on Task Reschedules
[2025-03-01T22:57:08.329+0000] {override.py:1951} INFO - Added Permission menu access on Task Reschedules to role Admin
[2025-03-01T22:57:08.374+0000] {override.py:1900} INFO - Created Permission View: can read on Triggers
[2025-03-01T22:57:08.382+0000] {override.py:1951} INFO - Added Permission can read on Triggers to role Admin
[2025-03-01T22:57:08.388+0000] {override.py:1900} INFO - Created Permission View: menu access on Triggers
[2025-03-01T22:57:08.394+0000] {override.py:1951} INFO - Added Permission menu access on Triggers to role Admin
[2025-03-01T22:57:08.417+0000] {override.py:1900} INFO - Created Permission View: can read on Configurations
[2025-03-01T22:57:08.423+0000] {override.py:1951} INFO - Added Permission can read on Configurations to role Admin
[2025-03-01T22:57:08.429+0000] {override.py:1900} INFO - Created Permission View: menu access on Configurations
[2025-03-01T22:57:08.435+0000] {override.py:1951} INFO - Added Permission menu access on Configurations to role Admin
[2025-03-01T22:57:08.478+0000] {override.py:1900} INFO - Created Permission View: can create on Connections
[2025-03-01T22:57:08.483+0000] {override.py:1951} INFO - Added Permission can create on Connections to role Admin
[2025-03-01T22:57:08.489+0000] {override.py:1900} INFO - Created Permission View: can read on Connections
[2025-03-01T22:57:08.495+0000] {override.py:1951} INFO - Added Permission can read on Connections to role Admin
[2025-03-01T22:57:08.500+0000] {override.py:1900} INFO - Created Permission View: can edit on Connections
[2025-03-01T22:57:08.506+0000] {override.py:1951} INFO - Added Permission can edit on Connections to role Admin
[2025-03-01T22:57:08.512+0000] {override.py:1900} INFO - Created Permission View: can delete on Connections
[2025-03-01T22:57:08.518+0000] {override.py:1951} INFO - Added Permission can delete on Connections to role Admin
[2025-03-01T22:57:08.525+0000] {override.py:1900} INFO - Created Permission View: menu access on Connections
[2025-03-01T22:57:08.531+0000] {override.py:1951} INFO - Added Permission menu access on Connections to role Admin
[2025-03-01T22:57:08.575+0000] {override.py:1900} INFO - Created Permission View: can read on SLA Misses
[2025-03-01T22:57:08.580+0000] {override.py:1951} INFO - Added Permission can read on SLA Misses to role Admin
[2025-03-01T22:57:08.586+0000] {override.py:1900} INFO - Created Permission View: menu access on SLA Misses
[2025-03-01T22:57:08.591+0000] {override.py:1951} INFO - Added Permission menu access on SLA Misses to role Admin
[2025-03-01T22:57:08.597+0000] {override.py:1900} INFO - Created Permission View: can delete on SLA Misses
[2025-03-01T22:57:08.603+0000] {override.py:1951} INFO - Added Permission can delete on SLA Misses to role Admin
[2025-03-01T22:57:08.610+0000] {override.py:1900} INFO - Created Permission View: can edit on SLA Misses
[2025-03-01T22:57:08.617+0000] {override.py:1951} INFO - Added Permission can edit on SLA Misses to role Admin
[2025-03-01T22:57:08.641+0000] {override.py:1900} INFO - Created Permission View: can read on Plugins
[2025-03-01T22:57:08.648+0000] {override.py:1951} INFO - Added Permission can read on Plugins to role Admin
[2025-03-01T22:57:08.654+0000] {override.py:1900} INFO - Created Permission View: menu access on Plugins
[2025-03-01T22:57:08.659+0000] {override.py:1951} INFO - Added Permission menu access on Plugins to role Admin
[2025-03-01T22:57:08.685+0000] {override.py:1900} INFO - Created Permission View: can read on Providers
[2025-03-01T22:57:08.691+0000] {override.py:1951} INFO - Added Permission can read on Providers to role Admin
[2025-03-01T22:57:08.697+0000] {override.py:1900} INFO - Created Permission View: menu access on Providers
[2025-03-01T22:57:08.703+0000] {override.py:1951} INFO - Added Permission menu access on Providers to role Admin
[2025-03-01T22:57:08.755+0000] {override.py:1900} INFO - Created Permission View: can create on Pools
[2025-03-01T22:57:08.763+0000] {override.py:1951} INFO - Added Permission can create on Pools to role Admin
[2025-03-01T22:57:08.770+0000] {override.py:1900} INFO - Created Permission View: can read on Pools
[2025-03-01T22:57:08.776+0000] {override.py:1951} INFO - Added Permission can read on Pools to role Admin
[2025-03-01T22:57:08.783+0000] {override.py:1900} INFO - Created Permission View: can edit on Pools
[2025-03-01T22:57:08.789+0000] {override.py:1951} INFO - Added Permission can edit on Pools to role Admin
[2025-03-01T22:57:08.795+0000] {override.py:1900} INFO - Created Permission View: can delete on Pools
[2025-03-01T22:57:08.800+0000] {override.py:1951} INFO - Added Permission can delete on Pools to role Admin
[2025-03-01T22:57:08.806+0000] {override.py:1900} INFO - Created Permission View: menu access on Pools
[2025-03-01T22:57:08.812+0000] {override.py:1951} INFO - Added Permission menu access on Pools to role Admin
[2025-03-01T22:57:08.854+0000] {override.py:1900} INFO - Created Permission View: can read on XComs
[2025-03-01T22:57:08.860+0000] {override.py:1951} INFO - Added Permission can read on XComs to role Admin
[2025-03-01T22:57:08.866+0000] {override.py:1900} INFO - Created Permission View: can delete on XComs
[2025-03-01T22:57:08.871+0000] {override.py:1951} INFO - Added Permission can delete on XComs to role Admin
[2025-03-01T22:57:08.876+0000] {override.py:1900} INFO - Created Permission View: menu access on XComs
[2025-03-01T22:57:08.882+0000] {override.py:1951} INFO - Added Permission menu access on XComs to role Admin
[2025-03-01T22:57:08.907+0000] {override.py:1900} INFO - Created Permission View: menu access on DAG Dependencies
[2025-03-01T22:57:08.912+0000] {override.py:1951} INFO - Added Permission menu access on DAG Dependencies to role Admin
[2025-03-01T22:57:08.944+0000] {override.py:1900} INFO - Created Permission View: menu access on DAGs
[2025-03-01T22:57:08.950+0000] {override.py:1951} INFO - Added Permission menu access on DAGs to role Admin
[2025-03-01T22:57:08.961+0000] {override.py:1900} INFO - Created Permission View: menu access on Cluster Activity
[2025-03-01T22:57:08.967+0000] {override.py:1951} INFO - Added Permission menu access on Cluster Activity to role Admin
[2025-03-01T22:57:08.977+0000] {override.py:1900} INFO - Created Permission View: menu access on Datasets
[2025-03-01T22:57:09.106+0000] {override.py:1951} INFO - Added Permission menu access on Datasets to role Admin
[2025-03-01T22:57:09.117+0000] {override.py:1900} INFO - Created Permission View: menu access on Documentation
[2025-03-01T22:57:09.124+0000] {override.py:1951} INFO - Added Permission menu access on Documentation to role Admin
[2025-03-01T22:57:09.134+0000] {override.py:1900} INFO - Created Permission View: menu access on Docs
[2025-03-01T22:57:09.140+0000] {override.py:1951} INFO - Added Permission menu access on Docs to role Admin
/home/airflow/.local/lib/python3.12/site-packages/airflow/providers/fab/auth_manager/fab_auth_manager.py:523 FutureWarning: section/key [webserver/update_fab_perms] has been deprecated, you should use[fab/update_fab_perms] instead. Please update your `conf.get*` call to use the new name
[2025-03-01T22:57:12.410+0000] {override.py:1900} INFO - Created Permission View: can read on DAGs
[2025-03-01T22:57:12.418+0000] {override.py:1900} INFO - Created Permission View: can delete on DAGs
[2025-03-01T22:57:12.426+0000] {override.py:1900} INFO - Created Permission View: can edit on DAGs
[2025-03-01T22:57:12.442+0000] {override.py:1496} INFO - Inserted Role: Viewer
[2025-03-01T22:57:12.449+0000] {override.py:1951} INFO - Added Permission can read on DAGs to role Viewer
[2025-03-01T22:57:12.458+0000] {override.py:1900} INFO - Created Permission View: can read on DAG Dependencies
[2025-03-01T22:57:12.461+0000] {override.py:1951} INFO - Added Permission can read on DAG Dependencies to role Viewer
[2025-03-01T22:57:12.469+0000] {override.py:1900} INFO - Created Permission View: can read on DAG Code
[2025-03-01T22:57:12.471+0000] {override.py:1951} INFO - Added Permission can read on DAG Code to role Viewer
[2025-03-01T22:57:12.474+0000] {override.py:1951} INFO - Added Permission can read on DAG Runs to role Viewer
[2025-03-01T22:57:12.483+0000] {override.py:1900} INFO - Created Permission View: can read on Datasets
[2025-03-01T22:57:12.486+0000] {override.py:1951} INFO - Added Permission can read on Datasets to role Viewer
[2025-03-01T22:57:12.492+0000] {override.py:1900} INFO - Created Permission View: can read on Cluster Activity
[2025-03-01T22:57:12.495+0000] {override.py:1951} INFO - Added Permission can read on Cluster Activity to role Viewer
[2025-03-01T22:57:12.498+0000] {override.py:1951} INFO - Added Permission can read on Pools to role Viewer
[2025-03-01T22:57:12.505+0000] {override.py:1900} INFO - Created Permission View: can read on ImportError
[2025-03-01T22:57:12.507+0000] {override.py:1951} INFO - Added Permission can read on ImportError to role Viewer
[2025-03-01T22:57:12.513+0000] {override.py:1900} INFO - Created Permission View: can read on DAG Warnings
[2025-03-01T22:57:12.516+0000] {override.py:1951} INFO - Added Permission can read on DAG Warnings to role Viewer
[2025-03-01T22:57:12.518+0000] {override.py:1951} INFO - Added Permission can read on Jobs to role Viewer
[2025-03-01T22:57:12.520+0000] {override.py:1951} INFO - Added Permission can read on My Password to role Viewer
[2025-03-01T22:57:12.522+0000] {override.py:1951} INFO - Added Permission can edit on My Password to role Viewer
[2025-03-01T22:57:12.524+0000] {override.py:1951} INFO - Added Permission can read on My Profile to role Viewer
[2025-03-01T22:57:12.527+0000] {override.py:1951} INFO - Added Permission can edit on My Profile to role Viewer
[2025-03-01T22:57:12.529+0000] {override.py:1951} INFO - Added Permission can read on SLA Misses to role Viewer
[2025-03-01T22:57:12.531+0000] {override.py:1951} INFO - Added Permission can read on Task Instances to role Viewer
[2025-03-01T22:57:12.538+0000] {override.py:1900} INFO - Created Permission View: can read on Task Logs
[2025-03-01T22:57:12.541+0000] {override.py:1951} INFO - Added Permission can read on Task Logs to role Viewer
[2025-03-01T22:57:12.543+0000] {override.py:1951} INFO - Added Permission can read on XComs to role Viewer
[2025-03-01T22:57:12.551+0000] {override.py:1900} INFO - Created Permission View: can read on Website
[2025-03-01T22:57:12.554+0000] {override.py:1951} INFO - Added Permission can read on Website to role Viewer
[2025-03-01T22:57:12.556+0000] {override.py:1951} INFO - Added Permission menu access on Browse to role Viewer
[2025-03-01T22:57:12.558+0000] {override.py:1951} INFO - Added Permission menu access on DAGs to role Viewer
[2025-03-01T22:57:12.561+0000] {override.py:1951} INFO - Added Permission menu access on DAG Dependencies to role Viewer
[2025-03-01T22:57:12.563+0000] {override.py:1951} INFO - Added Permission menu access on DAG Runs to role Viewer
[2025-03-01T22:57:12.566+0000] {override.py:1951} INFO - Added Permission menu access on Datasets to role Viewer
[2025-03-01T22:57:12.568+0000] {override.py:1951} INFO - Added Permission menu access on Cluster Activity to role Viewer
[2025-03-01T22:57:12.571+0000] {override.py:1951} INFO - Added Permission menu access on Documentation to role Viewer
[2025-03-01T22:57:12.574+0000] {override.py:1951} INFO - Added Permission menu access on Docs to role Viewer
[2025-03-01T22:57:12.576+0000] {override.py:1951} INFO - Added Permission menu access on Jobs to role Viewer
[2025-03-01T22:57:12.578+0000] {override.py:1951} INFO - Added Permission menu access on SLA Misses to role Viewer
[2025-03-01T22:57:12.580+0000] {override.py:1951} INFO - Added Permission menu access on Task Instances to role Viewer
[2025-03-01T22:57:12.583+0000] {override.py:1496} INFO - Inserted Role: User
[2025-03-01T22:57:12.586+0000] {override.py:1951} INFO - Added Permission can read on DAGs to role User
[2025-03-01T22:57:12.592+0000] {override.py:1951} INFO - Added Permission can read on DAG Dependencies to role User
[2025-03-01T22:57:12.598+0000] {override.py:1951} INFO - Added Permission can read on DAG Code to role User
[2025-03-01T22:57:12.601+0000] {override.py:1951} INFO - Added Permission can read on DAG Runs to role User
[2025-03-01T22:57:12.606+0000] {override.py:1951} INFO - Added Permission can read on Datasets to role User
[2025-03-01T22:57:12.612+0000] {override.py:1951} INFO - Added Permission can read on Cluster Activity to role User
[2025-03-01T22:57:12.615+0000] {override.py:1951} INFO - Added Permission can read on Pools to role User
[2025-03-01T22:57:12.621+0000] {override.py:1951} INFO - Added Permission can read on ImportError to role User
[2025-03-01T22:57:12.626+0000] {override.py:1951} INFO - Added Permission can read on DAG Warnings to role User
[2025-03-01T22:57:12.629+0000] {override.py:1951} INFO - Added Permission can read on Jobs to role User
[2025-03-01T22:57:12.632+0000] {override.py:1951} INFO - Added Permission can read on My Password to role User
[2025-03-01T22:57:12.634+0000] {override.py:1951} INFO - Added Permission can edit on My Password to role User
[2025-03-01T22:57:12.637+0000] {override.py:1951} INFO - Added Permission can read on My Profile to role User
[2025-03-01T22:57:12.639+0000] {override.py:1951} INFO - Added Permission can edit on My Profile to role User
[2025-03-01T22:57:12.642+0000] {override.py:1951} INFO - Added Permission can read on SLA Misses to role User
[2025-03-01T22:57:12.644+0000] {override.py:1951} INFO - Added Permission can read on Task Instances to role User
[2025-03-01T22:57:12.649+0000] {override.py:1951} INFO - Added Permission can read on Task Logs to role User
[2025-03-01T22:57:12.651+0000] {override.py:1951} INFO - Added Permission can read on XComs to role User
[2025-03-01T22:57:12.657+0000] {override.py:1951} INFO - Added Permission can read on Website to role User
[2025-03-01T22:57:12.660+0000] {override.py:1951} INFO - Added Permission menu access on Browse to role User
[2025-03-01T22:57:12.662+0000] {override.py:1951} INFO - Added Permission menu access on DAGs to role User
[2025-03-01T22:57:12.664+0000] {override.py:1951} INFO - Added Permission menu access on DAG Dependencies to role User
[2025-03-01T22:57:12.667+0000] {override.py:1951} INFO - Added Permission menu access on DAG Runs to role User
[2025-03-01T22:57:12.669+0000] {override.py:1951} INFO - Added Permission menu access on Datasets to role User
[2025-03-01T22:57:12.671+0000] {override.py:1951} INFO - Added Permission menu access on Cluster Activity to role User
[2025-03-01T22:57:12.673+0000] {override.py:1951} INFO - Added Permission menu access on Documentation to role User
[2025-03-01T22:57:12.675+0000] {override.py:1951} INFO - Added Permission menu access on Docs to role User
[2025-03-01T22:57:12.677+0000] {override.py:1951} INFO - Added Permission menu access on Jobs to role User
[2025-03-01T22:57:12.679+0000] {override.py:1951} INFO - Added Permission menu access on SLA Misses to role User
[2025-03-01T22:57:12.682+0000] {override.py:1951} INFO - Added Permission menu access on Task Instances to role User
[2025-03-01T22:57:12.684+0000] {override.py:1951} INFO - Added Permission can edit on DAGs to role User
[2025-03-01T22:57:12.686+0000] {override.py:1951} INFO - Added Permission can delete on DAGs to role User
[2025-03-01T22:57:12.689+0000] {override.py:1951} INFO - Added Permission can create on Task Instances to role User
[2025-03-01T22:57:12.692+0000] {override.py:1951} INFO - Added Permission can edit on Task Instances to role User
[2025-03-01T22:57:12.694+0000] {override.py:1951} INFO - Added Permission can delete on Task Instances to role User
[2025-03-01T22:57:12.696+0000] {override.py:1951} INFO - Added Permission can create on DAG Runs to role User
[2025-03-01T22:57:12.698+0000] {override.py:1951} INFO - Added Permission can edit on DAG Runs to role User
[2025-03-01T22:57:12.700+0000] {override.py:1951} INFO - Added Permission can delete on DAG Runs to role User
[2025-03-01T22:57:12.706+0000] {override.py:1900} INFO - Created Permission View: can create on Datasets
[2025-03-01T22:57:12.709+0000] {override.py:1951} INFO - Added Permission can create on Datasets to role User
[2025-03-01T22:57:12.712+0000] {override.py:1496} INFO - Inserted Role: Op
[2025-03-01T22:57:12.715+0000] {override.py:1951} INFO - Added Permission can read on DAGs to role Op
[2025-03-01T22:57:12.721+0000] {override.py:1951} INFO - Added Permission can read on DAG Dependencies to role Op
[2025-03-01T22:57:12.726+0000] {override.py:1951} INFO - Added Permission can read on DAG Code to role Op
[2025-03-01T22:57:12.728+0000] {override.py:1951} INFO - Added Permission can read on DAG Runs to role Op
[2025-03-01T22:57:12.733+0000] {override.py:1951} INFO - Added Permission can read on Datasets to role Op
[2025-03-01T22:57:12.738+0000] {override.py:1951} INFO - Added Permission can read on Cluster Activity to role Op
[2025-03-01T22:57:12.741+0000] {override.py:1951} INFO - Added Permission can read on Pools to role Op
[2025-03-01T22:57:12.747+0000] {override.py:1951} INFO - Added Permission can read on ImportError to role Op
[2025-03-01T22:57:12.753+0000] {override.py:1951} INFO - Added Permission can read on DAG Warnings to role Op
[2025-03-01T22:57:12.756+0000] {override.py:1951} INFO - Added Permission can read on Jobs to role Op
[2025-03-01T22:57:12.758+0000] {override.py:1951} INFO - Added Permission can read on My Password to role Op
[2025-03-01T22:57:12.761+0000] {override.py:1951} INFO - Added Permission can edit on My Password to role Op
[2025-03-01T22:57:12.763+0000] {override.py:1951} INFO - Added Permission can read on My Profile to role Op
[2025-03-01T22:57:12.766+0000] {override.py:1951} INFO - Added Permission can edit on My Profile to role Op
[2025-03-01T22:57:12.768+0000] {override.py:1951} INFO - Added Permission can read on SLA Misses to role Op
[2025-03-01T22:57:12.770+0000] {override.py:1951} INFO - Added Permission can read on Task Instances to role Op
[2025-03-01T22:57:12.776+0000] {override.py:1951} INFO - Added Permission can read on Task Logs to role Op
[2025-03-01T22:57:12.779+0000] {override.py:1951} INFO - Added Permission can read on XComs to role Op
[2025-03-01T22:57:12.784+0000] {override.py:1951} INFO - Added Permission can read on Website to role Op
[2025-03-01T22:57:12.787+0000] {override.py:1951} INFO - Added Permission menu access on Browse to role Op
[2025-03-01T22:57:12.789+0000] {override.py:1951} INFO - Added Permission menu access on DAGs to role Op
[2025-03-01T22:57:12.791+0000] {override.py:1951} INFO - Added Permission menu access on DAG Dependencies to role Op
[2025-03-01T22:57:12.794+0000] {override.py:1951} INFO - Added Permission menu access on DAG Runs to role Op
[2025-03-01T22:57:12.796+0000] {override.py:1951} INFO - Added Permission menu access on Datasets to role Op
[2025-03-01T22:57:12.798+0000] {override.py:1951} INFO - Added Permission menu access on Cluster Activity to role Op
[2025-03-01T22:57:12.800+0000] {override.py:1951} INFO - Added Permission menu access on Documentation to role Op
[2025-03-01T22:57:12.802+0000] {override.py:1951} INFO - Added Permission menu access on Docs to role Op
[2025-03-01T22:57:12.805+0000] {override.py:1951} INFO - Added Permission menu access on Jobs to role Op
[2025-03-01T22:57:12.807+0000] {override.py:1951} INFO - Added Permission menu access on SLA Misses to role Op
[2025-03-01T22:57:12.809+0000] {override.py:1951} INFO - Added Permission menu access on Task Instances to role Op
[2025-03-01T22:57:12.812+0000] {override.py:1951} INFO - Added Permission can edit on DAGs to role Op
[2025-03-01T22:57:12.814+0000] {override.py:1951} INFO - Added Permission can delete on DAGs to role Op
[2025-03-01T22:57:12.816+0000] {override.py:1951} INFO - Added Permission can create on Task Instances to role Op
[2025-03-01T22:57:12.819+0000] {override.py:1951} INFO - Added Permission can edit on Task Instances to role Op
[2025-03-01T22:57:12.822+0000] {override.py:1951} INFO - Added Permission can delete on Task Instances to role Op
[2025-03-01T22:57:12.825+0000] {override.py:1951} INFO - Added Permission can create on DAG Runs to role Op
[2025-03-01T22:57:12.827+0000] {override.py:1951} INFO - Added Permission can edit on DAG Runs to role Op
[2025-03-01T22:57:12.829+0000] {override.py:1951} INFO - Added Permission can delete on DAG Runs to role Op
[2025-03-01T22:57:12.834+0000] {override.py:1951} INFO - Added Permission can create on Datasets to role Op
[2025-03-01T22:57:12.836+0000] {override.py:1951} INFO - Added Permission can read on Configurations to role Op
[2025-03-01T22:57:12.839+0000] {override.py:1951} INFO - Added Permission menu access on Admin to role Op
[2025-03-01T22:57:12.841+0000] {override.py:1951} INFO - Added Permission menu access on Configurations to role Op
[2025-03-01T22:57:12.844+0000] {override.py:1951} INFO - Added Permission menu access on Connections to role Op
[2025-03-01T22:57:12.846+0000] {override.py:1951} INFO - Added Permission menu access on Pools to role Op
[2025-03-01T22:57:12.848+0000] {override.py:1951} INFO - Added Permission menu access on Plugins to role Op
[2025-03-01T22:57:12.850+0000] {override.py:1951} INFO - Added Permission menu access on Variables to role Op
[2025-03-01T22:57:12.853+0000] {override.py:1951} INFO - Added Permission menu access on Providers to role Op
[2025-03-01T22:57:12.855+0000] {override.py:1951} INFO - Added Permission menu access on XComs to role Op
[2025-03-01T22:57:12.857+0000] {override.py:1951} INFO - Added Permission can create on Connections to role Op
[2025-03-01T22:57:12.859+0000] {override.py:1951} INFO - Added Permission can read on Connections to role Op
[2025-03-01T22:57:12.862+0000] {override.py:1951} INFO - Added Permission can edit on Connections to role Op
[2025-03-01T22:57:12.864+0000] {override.py:1951} INFO - Added Permission can delete on Connections to role Op
[2025-03-01T22:57:12.866+0000] {override.py:1951} INFO - Added Permission can create on Pools to role Op
[2025-03-01T22:57:12.868+0000] {override.py:1951} INFO - Added Permission can edit on Pools to role Op
[2025-03-01T22:57:12.870+0000] {override.py:1951} INFO - Added Permission can delete on Pools to role Op
[2025-03-01T22:57:12.872+0000] {override.py:1951} INFO - Added Permission can read on Plugins to role Op
[2025-03-01T22:57:12.875+0000] {override.py:1951} INFO - Added Permission can read on Providers to role Op
[2025-03-01T22:57:12.877+0000] {override.py:1951} INFO - Added Permission can create on Variables to role Op
[2025-03-01T22:57:12.879+0000] {override.py:1951} INFO - Added Permission can read on Variables to role Op
[2025-03-01T22:57:12.882+0000] {override.py:1951} INFO - Added Permission can edit on Variables to role Op
[2025-03-01T22:57:12.884+0000] {override.py:1951} INFO - Added Permission can delete on Variables to role Op
[2025-03-01T22:57:12.887+0000] {override.py:1951} INFO - Added Permission can delete on XComs to role Op
[2025-03-01T22:57:12.893+0000] {override.py:1900} INFO - Created Permission View: can delete on Datasets
[2025-03-01T22:57:12.895+0000] {override.py:1951} INFO - Added Permission can delete on Datasets to role Op
[2025-03-01T22:57:12.901+0000] {override.py:1951} INFO - Added Permission can read on DAGs to role Admin
[2025-03-01T22:57:12.908+0000] {override.py:1951} INFO - Added Permission can read on DAG Dependencies to role Admin
[2025-03-01T22:57:12.914+0000] {override.py:1951} INFO - Added Permission can read on DAG Code to role Admin
[2025-03-01T22:57:12.920+0000] {override.py:1951} INFO - Added Permission can read on Datasets to role Admin
[2025-03-01T22:57:12.926+0000] {override.py:1951} INFO - Added Permission can read on Cluster Activity to role Admin
[2025-03-01T22:57:12.931+0000] {override.py:1951} INFO - Added Permission can read on ImportError to role Admin
[2025-03-01T22:57:12.938+0000] {override.py:1951} INFO - Added Permission can read on DAG Warnings to role Admin
[2025-03-01T22:57:12.945+0000] {override.py:1951} INFO - Added Permission can read on Task Logs to role Admin
[2025-03-01T22:57:12.951+0000] {override.py:1951} INFO - Added Permission can read on Website to role Admin
[2025-03-01T22:57:12.954+0000] {override.py:1951} INFO - Added Permission can edit on DAGs to role Admin
[2025-03-01T22:57:12.957+0000] {override.py:1951} INFO - Added Permission can delete on DAGs to role Admin
[2025-03-01T22:57:12.964+0000] {override.py:1951} INFO - Added Permission can create on Datasets to role Admin
[2025-03-01T22:57:12.969+0000] {override.py:1951} INFO - Added Permission can delete on Datasets to role Admin
[2025-03-01 22:57:12 +0000] [81] [INFO] Starting gunicorn 23.0.0
/home/airflow/.local/lib/python3.12/site-packages/airflow/providers/elasticsearch/hooks/elasticsearch.py:26 DeprecationWarning: Importing from the 'elasticsearch.client' module is deprecated. Instead use 'elasticsearch' module for importing the client.
[2025-03-01T22:57:21.302+0000] {providers_manager.py:287} INFO - Optional provider feature disabled when importing 'airflow.providers.google.leveldb.hooks.leveldb.LevelDBHook' from 'apache-airflow-providers-google' package
/home/airflow/.local/lib/python3.12/site-packages/azure/batch/models/_models_py3.py:4839 SyntaxWarning: invalid escape sequence '\s'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:175 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:222 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1151 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1248 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1271 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1406 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1439 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1495 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1683 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1750 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:2025 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:2110 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:2407 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:2468 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:3987 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:4096 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:4127 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:4186 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:4225 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:4275 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:5209 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:5265 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:5302 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:5358 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:6437 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:6497 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:6538 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:6588 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:7023 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:7096 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:7267 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:7333 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:7378 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:7440 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:8222 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:8282 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:8322 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:8368 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:9475 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:9531 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:10532 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:10588 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:10625 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:10680 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:10923 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:10979 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:11016 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:11072 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:11231 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:11282 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:11420 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:11477 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:12300 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:12383 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:12439 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:12524 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:13019 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:13090 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:13139 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:13200 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:13886 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:13941 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:13977 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:14026 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:14318 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:14388 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:14436 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:14492 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:14744 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:14810 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:15415 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:15482 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:15527 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:15578 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:15897 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:15953 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:16617 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:16674 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:16712 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:16780 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:16932 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:16988 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:17025 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:17090 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:17228 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:17284 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:20234 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:20289 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:20862 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:20921 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:20960 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:21014 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:21316 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:21377 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:21418 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:21478 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:21612 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:21668 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:22155 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:22218 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:22559 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:22626 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:22671 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:22722 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:23061 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:23128 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:23173 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:23224 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:23511 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:23567 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:23968 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:24018 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:25343 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:25398 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:25434 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:25485 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:26723 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:26779 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:27121 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:27177 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:27461 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:27517 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:28053 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:28109 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:28536 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:28592 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:28932 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:28982 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:30727 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:30783 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:31296 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:31344 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:31617 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:31673 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:32120 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:32176 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:32339 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:32395 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:32432 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:32487 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:33502 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:33558 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:33869 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:33928 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:33967 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:34021 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:34739 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:34806 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:34852 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:34908 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:36915 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:36971 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:37417 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:37473 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:37845 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:37901 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:38208 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:38264 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:38301 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:38351 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:38690 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:38758 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:39141 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:39192 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:39419 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:39487 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:39683 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:39738 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:40019 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:40084 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41138 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41196 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41359 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41415 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41452 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41507 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41875 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41947 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:42441 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:42497 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:42534 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:42590 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:42627 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:42692 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43020 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43079 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43118 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43168 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43514 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43573 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43612 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43666 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43989 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:44045 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:44386 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:44442 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:45003 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:45058 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:45444 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:45499 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:46042 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:46098 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:46702 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:46758 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:47000 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:47050 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:47648 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:47704 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:48113 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:48190 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:48244 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:48321 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:49499 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:49555 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:49932 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50002 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50052 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50107 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50379 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50449 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50499 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50554 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50590 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50660 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50710 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50770 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51046 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51116 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51166 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51226 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51485 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51540 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51787 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51851 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51895 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51958 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:52212 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:52275 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:52463 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:52532 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:53040 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:53111 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:53334 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:53407 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:53961 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:54059 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:54322 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:54398 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:55022 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:55078 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:55310 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:55365 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:56196 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:56248 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:56508 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:56564 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57087 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57147 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57187 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57237 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57560 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57620 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57660 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57710 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59106 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59162 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59316 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59396 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59452 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59535 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59594 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59677 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59733 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59818 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:60639 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:60722 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:60778 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:60863 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61167 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61250 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61306 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61387 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61696 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61752 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61954 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61992 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:62660 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:62715 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:63882 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:63946 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:64582 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:64674 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:64940 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:65014 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:65117 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:65199 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:65385 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:65441 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:65874 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:65950 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:66003 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:66087 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:66686 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:66779 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:66918 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:66964 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:67735 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:67791 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:68043 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:68097 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:68532 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:68588 SyntaxWarning: invalid escape sequence '\d'
/home/airflow/.local/lib/python3.12/site-packages/snowflake/sqlalchemy/base.py:1068 SAWarning: The GenericFunction 'flatten' is already registered and is going to be overridden.
[2025-03-01 22:57:26 +0000] [81] [INFO] Listening at: http://0.0.0.0:8080 (81)
[2025-03-01 22:57:26 +0000] [81] [INFO] Using worker: sync
[2025-03-01 22:57:26 +0000] [129] [INFO] Booting worker with pid: 129
[2025-03-01 22:57:26 +0000] [130] [INFO] Booting worker with pid: 130
[2025-03-01 22:57:26 +0000] [131] [INFO] Booting worker with pid: 131
[2025-03-01 22:57:26 +0000] [132] [INFO] Booting worker with pid: 132
127.0.0.1 - - [01/Mar/2025:22:57:52 +0000] "GET /health HTTP/1.1" 200 318 "-" "curl/7.88.1"
^C
root@controlplane ~/example-orchestration ✖ docker compose status

Usage:  docker compose [OPTIONS] COMMAND

Define and run multi-container applications with Docker

Options:
      --all-resources              Include all resources, even those not used by services
      --ansi string                Control when to print ANSI control characters ("never"|"always"|"auto") (default "auto")
      --compatibility              Run compose in backward compatibility mode
      --dry-run                    Execute command in dry run mode
      --env-file stringArray       Specify an alternate environment file
  -f, --file stringArray           Compose configuration files
      --parallel int               Control max parallelism, -1 for unlimited (default -1)
      --profile stringArray        Specify a profile to enable
      --progress string            Set type of progress output (auto, tty, plain, json, quiet) (default "auto")
      --project-directory string   Specify an alternate working directory
                                   (default: the path of the, first specified, Compose file)
  -p, --project-name string        Project name

Commands:
  attach      Attach local standard input, output, and error streams to a service's running container
  build       Build or rebuild services
  commit      Create a new image from a service container's changes
  config      Parse, resolve and render compose file in canonical format
  cp          Copy files/folders between a service container and the local filesystem
  create      Creates containers for a service
  down        Stop and remove containers, networks
  events      Receive real time events from containers
  exec        Execute a command in a running container
  export      Export a service container's filesystem as a tar archive
  images      List images used by the created containers
  kill        Force stop service containers
  logs        View output from containers
  ls          List running compose projects
CONTAINER ID   NAME                                        CPU %     MEM USAGE / LIMIT   MEM %     NET I/O   BLOCK I/O   PIDS
8dd752fdea46   example-orchestration-airflow-scheduler-1   --        -- / --             --        --        --          --
9bfcec6861b0   example-orchestration-airflow-webserver-1   --        -- / --             --        --        --          --
13f45cb4ce7d   example-orchestration-airflow-worker-1      --        -- / --             --        --        --          --
bb792b15deba   example-orchestration-airflow-triggerer-1   --        -- / --             --        --        --          --
73bef0d4a10a   example-orchestration-redis-1               --        -- / --             --        --        --          --
547070be3846   example-orchestration-postgres-1            --        -- / --             --        --        --          --

exit status 130

root@controlplane ~/example-orchestration ✖ docker compose stop
[+] Stopping 7/7
 ✔ Container example-orchestration-airflow-triggerer-1  Stopped                                                                                                                  2.0s 
 ✔ Container example-orchestration-airflow-webserver-1  Stopped                                                                                                                  5.0s 
 ✔ Container example-orchestration-airflow-worker-1     Stopped                                                                                                                  2.6s 
 ✔ Container example-orchestration-airflow-scheduler-1  Stopped                                                                                                                  3.5s 
 ✔ Container example-orchestration-airflow-init-1       Stopped                                                                                                                  0.0s 
 ✔ Container example-orchestration-postgres-1           Stopped                                                                                                                  0.2s 
 ✔ Container example-orchestration-redis-1              Stopped                                                                                                                  0.4s 

root@controlplane ~/example-orchestration ➜  docker compose up -d
[+] Running 7/7
 ✔ Container example-orchestration-postgres-1           Healthy                                                                                                                  6.8s 
 ✔ Container example-orchestration-redis-1              Healthy                                                                                                                  6.8s 
 ✔ Container example-orchestration-airflow-init-1       Exited                                                                                                                  18.8s 
 ✔ Container example-orchestration-airflow-scheduler-1  Started                                                                                                                 19.3s 
 ✔ Container example-orchestration-airflow-webserver-1  Started                                                                                                                 19.3s 
 ✔ Container example-orchestration-airflow-triggerer-1  Started                                                                                                                 19.3s 
 ✔ Container example-orchestration-airflow-worker-1     Started                                                                                                                 19.3s 

root@controlplane ~/example-orchestration ➜

