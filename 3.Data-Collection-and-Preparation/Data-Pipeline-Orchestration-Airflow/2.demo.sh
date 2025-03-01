(.venv) bharathkumardasaraju@Data-Pipeline-Orchestration-Airflow$ docker compose up
[+] Running 7/0
 ✔ Container data-pipeline-orchestration-airflow-postgres-1           Running                                                                                                                                 0.0s
 ✔ Container data-pipeline-orchestration-airflow-redis-1              Running                                                                                                                                 0.0s
 ✔ Container data-pipeline-orchestration-airflow-airflow-init-1       Created                                                                                                                                 0.0s
 ✔ Container data-pipeline-orchestration-airflow-airflow-webserver-1  Created                                                                                                                                 0.1s
 ✔ Container data-pipeline-orchestration-airflow-airflow-worker-1     Created                                                                                                                                 0.1s
 ✔ Container data-pipeline-orchestration-airflow-airflow-triggerer-1  Created                                                                                                                                 0.1s
 ✔ Container data-pipeline-orchestration-airflow-airflow-scheduler-1  Created                                                                                                                                 0.1s
Attaching to airflow-init-1, airflow-scheduler-1, airflow-triggerer-1, airflow-webserver-1, airflow-worker-1, postgres-1, redis-1
airflow-init-1       | The container is run as root user. For security, consider using a regular user account.
airflow-init-1       |
airflow-init-1       | DB: postgresql+psycopg2://airflow:***@postgres/airflow
airflow-init-1       | Performing upgrade to the metadata database postgresql+psycopg2://airflow:***@postgres/airflow
airflow-init-1       | [2025-03-01T22:21:32.232+0000] {migration.py:215} INFO - Context impl PostgresqlImpl.
airflow-init-1       | [2025-03-01T22:21:32.232+0000] {migration.py:218} INFO - Will assume transactional DDL.
airflow-init-1       | [2025-03-01T22:21:32.233+0000] {migration.py:215} INFO - Context impl PostgresqlImpl.
airflow-init-1       | [2025-03-01T22:21:32.233+0000] {migration.py:218} INFO - Will assume transactional DDL.
airflow-init-1       | [2025-03-01T22:21:32.234+0000] {db.py:1674} INFO - Creating tables
airflow-init-1       | INFO  [alembic.runtime.migration] Context impl PostgresqlImpl.
airflow-init-1       | INFO  [alembic.runtime.migration] Will assume transactional DDL.
airflow-init-1       | INFO  [alembic.runtime.migration] Context impl PostgresqlImpl.
airflow-init-1       | INFO  [alembic.runtime.migration] Will assume transactional DDL.
airflow-init-1       | Database migrating done!
airflow-init-1       | /home/airflow/.local/lib/python3.12/site-packages/flask_limiter/extension.py:333 UserWarning: Using the in-memory storage for tracking rate limits as no storage was explicitly specified. This is not recommended for production use. See: https://flask-limiter.readthedocs.io#configuring-a-storage-backend for documentation about configuring the storage backend.
airflow-init-1       | airflow already exist in the db
airflow-init-1       | 2.10.2
airflow-init-1 exited with code 0
airflow-triggerer-1  |
airflow-webserver-1  |
airflow-scheduler-1  |
airflow-worker-1     |
airflow-webserver-1  | [2025-03-01T22:21:40.660+0000] {configuration.py:2096} INFO - Creating new FAB webserver config file in: /opt/airflow/webserver_config.py
airflow-triggerer-1  |   ____________       _____________
airflow-triggerer-1  |  ____    |__( )_________  __/__  /________      __
airflow-triggerer-1  | ____  /| |_  /__  ___/_  /_ __  /_  __ \_ | /| / /
airflow-triggerer-1  | ___  ___ |  / _  /   _  __/ _  / / /_/ /_ |/ |/ /
airflow-triggerer-1  |  _/_/  |_/_/  /_/    /_/    /_/  \____/____/|__/
airflow-triggerer-1  | [2025-03-01 22:21:41 +0000] [20] [INFO] Starting gunicorn 23.0.0
airflow-triggerer-1  | [2025-03-01 22:21:41 +0000] [20] [INFO] Listening at: http://[::]:8794 (20)
airflow-triggerer-1  | [2025-03-01 22:21:41 +0000] [20] [INFO] Using worker: sync
airflow-triggerer-1  | [2025-03-01 22:21:41 +0000] [21] [INFO] Booting worker with pid: 21
airflow-triggerer-1  | [2025-03-01 22:21:41 +0000] [22] [INFO] Booting worker with pid: 22
airflow-scheduler-1  | BACKEND=redis
airflow-scheduler-1  | DB_HOST=redis
airflow-scheduler-1  | DB_PORT=6379
airflow-worker-1     | BACKEND=redis
airflow-worker-1     | DB_HOST=redis
airflow-worker-1     | DB_PORT=6379
airflow-scheduler-1  |
airflow-worker-1     |
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/flask_limiter/extension.py:333 UserWarning: Using the in-memory storage for tracking rate limits as no storage was explicitly specified. This is not recommended for production use. See: https://flask-limiter.readthedocs.io#configuring-a-storage-backend for documentation about configuring the storage backend.
airflow-triggerer-1  | [2025-03-01T22:21:42.870+0000] {triggerer_job_runner.py:181} INFO - Setting up TriggererHandlerWrapper with handler <FileTaskHandler (NOTSET)>
airflow-triggerer-1  | [2025-03-01T22:21:42.870+0000] {triggerer_job_runner.py:237} INFO - Setting up logging queue listener with handlers [<RedirectStdHandler <stdout> (NOTSET)>, <TriggererHandlerWrapper (NOTSET)>]
airflow-triggerer-1  | [2025-03-01T22:21:42.874+0000] {triggerer_job_runner.py:338} INFO - Starting the triggerer
airflow-webserver-1  | [2025-03-01T22:21:43.258+0000] {override.py:1900} INFO - Created Permission View: can create on DAG Runs
airflow-webserver-1  | [2025-03-01T22:21:43.262+0000] {override.py:1951} INFO - Added Permission can create on DAG Runs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.264+0000] {override.py:1900} INFO - Created Permission View: can read on DAG Runs
airflow-webserver-1  | [2025-03-01T22:21:43.265+0000] {override.py:1951} INFO - Added Permission can read on DAG Runs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.267+0000] {override.py:1900} INFO - Created Permission View: can edit on DAG Runs
airflow-webserver-1  | [2025-03-01T22:21:43.269+0000] {override.py:1951} INFO - Added Permission can edit on DAG Runs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.271+0000] {override.py:1900} INFO - Created Permission View: can delete on DAG Runs
airflow-webserver-1  | [2025-03-01T22:21:43.272+0000] {override.py:1951} INFO - Added Permission can delete on DAG Runs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.274+0000] {override.py:1900} INFO - Created Permission View: menu access on DAG Runs
airflow-webserver-1  | [2025-03-01T22:21:43.275+0000] {override.py:1951} INFO - Added Permission menu access on DAG Runs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.280+0000] {override.py:1900} INFO - Created Permission View: menu access on Browse
airflow-webserver-1  | [2025-03-01T22:21:43.282+0000] {override.py:1951} INFO - Added Permission menu access on Browse to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.292+0000] {override.py:1900} INFO - Created Permission View: can read on Jobs
airflow-webserver-1  | [2025-03-01T22:21:43.294+0000] {override.py:1951} INFO - Added Permission can read on Jobs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.297+0000] {override.py:1900} INFO - Created Permission View: menu access on Jobs
airflow-webserver-1  | [2025-03-01T22:21:43.300+0000] {override.py:1951} INFO - Added Permission menu access on Jobs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.315+0000] {override.py:1900} INFO - Created Permission View: can read on Audit Logs
airflow-webserver-1  | [2025-03-01T22:21:43.317+0000] {override.py:1951} INFO - Added Permission can read on Audit Logs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.320+0000] {override.py:1900} INFO - Created Permission View: menu access on Audit Logs
airflow-webserver-1  | [2025-03-01T22:21:43.323+0000] {override.py:1951} INFO - Added Permission menu access on Audit Logs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.338+0000] {override.py:1900} INFO - Created Permission View: can create on Variables
airflow-webserver-1  | [2025-03-01T22:21:43.340+0000] {override.py:1951} INFO - Added Permission can create on Variables to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.343+0000] {override.py:1900} INFO - Created Permission View: can read on Variables
airflow-webserver-1  | [2025-03-01T22:21:43.345+0000] {override.py:1951} INFO - Added Permission can read on Variables to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.349+0000] {override.py:1900} INFO - Created Permission View: can edit on Variables
airflow-webserver-1  | [2025-03-01T22:21:43.351+0000] {override.py:1951} INFO - Added Permission can edit on Variables to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.354+0000] {override.py:1900} INFO - Created Permission View: can delete on Variables
airflow-webserver-1  | [2025-03-01T22:21:43.356+0000] {override.py:1951} INFO - Added Permission can delete on Variables to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.359+0000] {override.py:1900} INFO - Created Permission View: menu access on Variables
airflow-webserver-1  | [2025-03-01T22:21:43.361+0000] {override.py:1951} INFO - Added Permission menu access on Variables to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.367+0000] {override.py:1900} INFO - Created Permission View: menu access on Admin
airflow-webserver-1  | [2025-03-01T22:21:43.370+0000] {override.py:1951} INFO - Added Permission menu access on Admin to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.381+0000] {override.py:1900} INFO - Created Permission View: can create on Task Instances
airflow-webserver-1  | [2025-03-01T22:21:43.384+0000] {override.py:1951} INFO - Added Permission can create on Task Instances to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.387+0000] {override.py:1900} INFO - Created Permission View: can read on Task Instances
airflow-webserver-1  | [2025-03-01T22:21:43.390+0000] {override.py:1951} INFO - Added Permission can read on Task Instances to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.393+0000] {override.py:1900} INFO - Created Permission View: can edit on Task Instances
airflow-webserver-1  | [2025-03-01T22:21:43.395+0000] {override.py:1951} INFO - Added Permission can edit on Task Instances to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.397+0000] {override.py:1900} INFO - Created Permission View: can delete on Task Instances
airflow-webserver-1  | [2025-03-01T22:21:43.400+0000] {override.py:1951} INFO - Added Permission can delete on Task Instances to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.403+0000] {override.py:1900} INFO - Created Permission View: menu access on Task Instances
airflow-webserver-1  | [2025-03-01T22:21:43.406+0000] {override.py:1951} INFO - Added Permission menu access on Task Instances to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.420+0000] {override.py:1900} INFO - Created Permission View: can read on Task Reschedules
airflow-webserver-1  | [2025-03-01T22:21:43.422+0000] {override.py:1951} INFO - Added Permission can read on Task Reschedules to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.425+0000] {override.py:1900} INFO - Created Permission View: menu access on Task Reschedules
airflow-webserver-1  | [2025-03-01T22:21:43.428+0000] {override.py:1951} INFO - Added Permission menu access on Task Reschedules to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.442+0000] {override.py:1900} INFO - Created Permission View: can read on Triggers
airflow-webserver-1  | [2025-03-01T22:21:43.445+0000] {override.py:1951} INFO - Added Permission can read on Triggers to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.447+0000] {override.py:1900} INFO - Created Permission View: menu access on Triggers
airflow-webserver-1  | [2025-03-01T22:21:43.450+0000] {override.py:1951} INFO - Added Permission menu access on Triggers to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.458+0000] {override.py:1900} INFO - Created Permission View: can read on Configurations
airflow-webserver-1  | [2025-03-01T22:21:43.460+0000] {override.py:1951} INFO - Added Permission can read on Configurations to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.463+0000] {override.py:1900} INFO - Created Permission View: menu access on Configurations
airflow-webserver-1  | [2025-03-01T22:21:43.465+0000] {override.py:1951} INFO - Added Permission menu access on Configurations to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.481+0000] {override.py:1900} INFO - Created Permission View: can create on Connections
airflow-webserver-1  | [2025-03-01T22:21:43.486+0000] {override.py:1951} INFO - Added Permission can create on Connections to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.490+0000] {override.py:1900} INFO - Created Permission View: can read on Connections
airflow-webserver-1  | [2025-03-01T22:21:43.495+0000] {override.py:1951} INFO - Added Permission can read on Connections to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.499+0000] {override.py:1900} INFO - Created Permission View: can edit on Connections
airflow-webserver-1  | [2025-03-01T22:21:43.505+0000] {override.py:1951} INFO - Added Permission can edit on Connections to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.510+0000] {override.py:1900} INFO - Created Permission View: can delete on Connections
airflow-webserver-1  | [2025-03-01T22:21:43.513+0000] {override.py:1951} INFO - Added Permission can delete on Connections to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.517+0000] {override.py:1900} INFO - Created Permission View: menu access on Connections
airflow-webserver-1  | [2025-03-01T22:21:43.521+0000] {override.py:1951} INFO - Added Permission menu access on Connections to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.539+0000] {override.py:1900} INFO - Created Permission View: can read on SLA Misses
airflow-webserver-1  | [2025-03-01T22:21:43.543+0000] {override.py:1951} INFO - Added Permission can read on SLA Misses to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.548+0000] {override.py:1900} INFO - Created Permission View: menu access on SLA Misses
airflow-webserver-1  | [2025-03-01T22:21:43.552+0000] {override.py:1951} INFO - Added Permission menu access on SLA Misses to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.556+0000] {override.py:1900} INFO - Created Permission View: can delete on SLA Misses
airflow-webserver-1  | [2025-03-01T22:21:43.560+0000] {override.py:1951} INFO - Added Permission can delete on SLA Misses to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.564+0000] {override.py:1900} INFO - Created Permission View: can edit on SLA Misses
airflow-webserver-1  | [2025-03-01T22:21:43.569+0000] {override.py:1951} INFO - Added Permission can edit on SLA Misses to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.579+0000] {override.py:1900} INFO - Created Permission View: can read on Plugins
airflow-webserver-1  | [2025-03-01T22:21:43.583+0000] {override.py:1951} INFO - Added Permission can read on Plugins to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.587+0000] {override.py:1900} INFO - Created Permission View: menu access on Plugins
airflow-webserver-1  | [2025-03-01T22:21:43.592+0000] {override.py:1951} INFO - Added Permission menu access on Plugins to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.602+0000] {override.py:1900} INFO - Created Permission View: can read on Providers
airflow-webserver-1  | [2025-03-01T22:21:43.605+0000] {override.py:1951} INFO - Added Permission can read on Providers to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.608+0000] {override.py:1900} INFO - Created Permission View: menu access on Providers
airflow-webserver-1  | [2025-03-01T22:21:43.611+0000] {override.py:1951} INFO - Added Permission menu access on Providers to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.629+0000] {override.py:1900} INFO - Created Permission View: can create on Pools
airflow-webserver-1  | [2025-03-01T22:21:43.632+0000] {override.py:1951} INFO - Added Permission can create on Pools to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.637+0000] {override.py:1900} INFO - Created Permission View: can read on Pools
airflow-webserver-1  | [2025-03-01T22:21:43.641+0000] {override.py:1951} INFO - Added Permission can read on Pools to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.645+0000] {override.py:1900} INFO - Created Permission View: can edit on Pools
airflow-webserver-1  | [2025-03-01T22:21:43.648+0000] {override.py:1951} INFO - Added Permission can edit on Pools to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.652+0000] {override.py:1900} INFO - Created Permission View: can delete on Pools
airflow-webserver-1  | [2025-03-01T22:21:43.655+0000] {override.py:1951} INFO - Added Permission can delete on Pools to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.660+0000] {override.py:1900} INFO - Created Permission View: menu access on Pools
airflow-webserver-1  | [2025-03-01T22:21:43.664+0000] {override.py:1951} INFO - Added Permission menu access on Pools to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.682+0000] {override.py:1900} INFO - Created Permission View: can read on XComs
airflow-webserver-1  | [2025-03-01T22:21:43.685+0000] {override.py:1951} INFO - Added Permission can read on XComs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.689+0000] {override.py:1900} INFO - Created Permission View: can delete on XComs
airflow-webserver-1  | [2025-03-01T22:21:43.693+0000] {override.py:1951} INFO - Added Permission can delete on XComs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.696+0000] {override.py:1900} INFO - Created Permission View: menu access on XComs
airflow-webserver-1  | [2025-03-01T22:21:43.699+0000] {override.py:1951} INFO - Added Permission menu access on XComs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.716+0000] {override.py:1900} INFO - Created Permission View: menu access on DAG Dependencies
airflow-webserver-1  | [2025-03-01T22:21:43.720+0000] {override.py:1951} INFO - Added Permission menu access on DAG Dependencies to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.739+0000] {override.py:1900} INFO - Created Permission View: menu access on DAGs
airflow-webserver-1  | [2025-03-01T22:21:43.745+0000] {override.py:1951} INFO - Added Permission menu access on DAGs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.753+0000] {override.py:1900} INFO - Created Permission View: menu access on Cluster Activity
airflow-webserver-1  | [2025-03-01T22:21:43.757+0000] {override.py:1951} INFO - Added Permission menu access on Cluster Activity to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.762+0000] {override.py:1900} INFO - Created Permission View: menu access on Datasets
airflow-webserver-1  | [2025-03-01T22:21:43.765+0000] {override.py:1951} INFO - Added Permission menu access on Datasets to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.774+0000] {override.py:1900} INFO - Created Permission View: menu access on Documentation
airflow-webserver-1  | [2025-03-01T22:21:43.778+0000] {override.py:1951} INFO - Added Permission menu access on Documentation to role Admin
airflow-webserver-1  | [2025-03-01T22:21:43.784+0000] {override.py:1900} INFO - Created Permission View: menu access on Docs
airflow-webserver-1  | [2025-03-01T22:21:43.787+0000] {override.py:1951} INFO - Added Permission menu access on Docs to role Admin
airflow-worker-1     | [2025-03-01T22:21:44.007+0000] {configuration.py:2096} INFO - Creating new FAB webserver config file in: /opt/airflow/webserver_config.py
airflow-worker-1     | [2025-03-01 22:21:44 +0000] [30] [INFO] Starting gunicorn 23.0.0
airflow-worker-1     | [2025-03-01 22:21:44 +0000] [30] [INFO] Listening at: http://[::]:8793 (30)
airflow-worker-1     | [2025-03-01 22:21:44 +0000] [30] [INFO] Using worker: sync
airflow-worker-1     | [2025-03-01 22:21:44 +0000] [31] [INFO] Booting worker with pid: 31
airflow-worker-1     | [2025-03-01 22:21:44 +0000] [32] [INFO] Booting worker with pid: 32
airflow-scheduler-1  |   ____________       _____________
airflow-scheduler-1  |  ____    |__( )_________  __/__  /________      __
airflow-scheduler-1  | ____  /| |_  /__  ___/_  /_ __  /_  __ \_ | /| / /
airflow-scheduler-1  | ___  ___ |  / _  /   _  __/ _  / / /_/ /_ |/ |/ /
airflow-scheduler-1  |  _/_/  |_/_/  /_/    /_/    /_/  \____/____/|__/
airflow-scheduler-1  | [2025-03-01T22:21:44.672+0000] {_client.py:1026} INFO - HTTP Request: GET https://apacheairflow.gateway.scarf.sh/scheduler?version=2.10.2&python_version=3.12&platform=Linux&arch=aarch64&database=postgresql&db_version=13.20&executor=CeleryExecutor "HTTP/1.1 200 OK"
airflow-worker-1     |
airflow-worker-1     |  -------------- celery@f361c712cdbb v5.4.0 (opalescent)
airflow-worker-1     | --- ***** -----
airflow-worker-1     | -- ******* ---- Linux-6.10.14-linuxkit-aarch64-with-glibc2.36 2025-03-01 22:21:44
airflow-worker-1     | - *** --- * ---
airflow-worker-1     | - ** ---------- [config]
airflow-worker-1     | - ** ---------- .> app:         airflow.providers.celery.executors.celery_executor:0xffffb43327b0
airflow-worker-1     | - ** ---------- .> transport:   redis://redis:6379/0
airflow-worker-1     | - ** ---------- .> results:     postgresql://airflow:**@postgres/airflow
airflow-worker-1     | - *** --- * --- .> concurrency: 16 (prefork)
airflow-worker-1     | -- ******* ---- .> task events: OFF (enable -E to monitor tasks in this worker)
airflow-worker-1     | --- ***** -----
airflow-worker-1     |  -------------- [queues]
airflow-worker-1     |                 .> default          exchange=default(direct) key=default
airflow-worker-1     |
airflow-worker-1     |
airflow-worker-1     | [tasks]
airflow-worker-1     |   . airflow.providers.celery.executors.celery_executor_utils.execute_command
airflow-worker-1     |
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/airflow/providers/fab/auth_manager/fab_auth_manager.py:523 FutureWarning: section/key [webserver/update_fab_perms] has been deprecated, you should use[fab/update_fab_perms] instead. Please update your `conf.get*` call to use the new name
airflow-webserver-1  | [2025-03-01T22:21:45.373+0000] {override.py:1900} INFO - Created Permission View: can delete on DAGs
airflow-webserver-1  | [2025-03-01T22:21:45.377+0000] {override.py:1900} INFO - Created Permission View: can read on DAGs
airflow-webserver-1  | [2025-03-01T22:21:45.383+0000] {override.py:1900} INFO - Created Permission View: can edit on DAGs
airflow-webserver-1  | [2025-03-01T22:21:45.393+0000] {override.py:1496} INFO - Inserted Role: Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.397+0000] {override.py:1951} INFO - Added Permission can read on DAGs to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.400+0000] {override.py:1900} INFO - Created Permission View: can read on DAG Dependencies
airflow-webserver-1  | [2025-03-01T22:21:45.402+0000] {override.py:1951} INFO - Added Permission can read on DAG Dependencies to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.406+0000] {override.py:1900} INFO - Created Permission View: can read on DAG Code
airflow-webserver-1  | [2025-03-01T22:21:45.408+0000] {override.py:1951} INFO - Added Permission can read on DAG Code to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.413+0000] {override.py:1951} INFO - Added Permission can read on DAG Runs to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.418+0000] {override.py:1900} INFO - Created Permission View: can read on Datasets
airflow-webserver-1  | [2025-03-01T22:21:45.421+0000] {override.py:1951} INFO - Added Permission can read on Datasets to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.425+0000] {override.py:1900} INFO - Created Permission View: can read on Cluster Activity
airflow-webserver-1  | [2025-03-01T22:21:45.427+0000] {override.py:1951} INFO - Added Permission can read on Cluster Activity to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.429+0000] {override.py:1951} INFO - Added Permission can read on Pools to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.432+0000] {override.py:1900} INFO - Created Permission View: can read on ImportError
airflow-webserver-1  | [2025-03-01T22:21:45.433+0000] {override.py:1951} INFO - Added Permission can read on ImportError to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.437+0000] {override.py:1900} INFO - Created Permission View: can read on DAG Warnings
airflow-webserver-1  | [2025-03-01T22:21:45.438+0000] {override.py:1951} INFO - Added Permission can read on DAG Warnings to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.440+0000] {override.py:1951} INFO - Added Permission can read on Jobs to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.442+0000] {override.py:1951} INFO - Added Permission can read on My Password to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.445+0000] {override.py:1951} INFO - Added Permission can edit on My Password to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.447+0000] {override.py:1951} INFO - Added Permission can read on My Profile to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.449+0000] {override.py:1951} INFO - Added Permission can edit on My Profile to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.450+0000] {override.py:1951} INFO - Added Permission can read on SLA Misses to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.452+0000] {override.py:1951} INFO - Added Permission can read on Task Instances to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.455+0000] {override.py:1900} INFO - Created Permission View: can read on Task Logs
airflow-webserver-1  | [2025-03-01T22:21:45.457+0000] {override.py:1951} INFO - Added Permission can read on Task Logs to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.459+0000] {override.py:1951} INFO - Added Permission can read on XComs to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.462+0000] {override.py:1900} INFO - Created Permission View: can read on Website
airflow-webserver-1  | [2025-03-01T22:21:45.464+0000] {override.py:1951} INFO - Added Permission can read on Website to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.465+0000] {override.py:1951} INFO - Added Permission menu access on Browse to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.468+0000] {override.py:1951} INFO - Added Permission menu access on DAGs to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.470+0000] {override.py:1951} INFO - Added Permission menu access on DAG Dependencies to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.471+0000] {override.py:1951} INFO - Added Permission menu access on DAG Runs to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.473+0000] {override.py:1951} INFO - Added Permission menu access on Datasets to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.474+0000] {override.py:1951} INFO - Added Permission menu access on Cluster Activity to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.475+0000] {override.py:1951} INFO - Added Permission menu access on Documentation to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.477+0000] {override.py:1951} INFO - Added Permission menu access on Docs to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.478+0000] {override.py:1951} INFO - Added Permission menu access on Jobs to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.480+0000] {override.py:1951} INFO - Added Permission menu access on SLA Misses to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.481+0000] {override.py:1951} INFO - Added Permission menu access on Task Instances to role Viewer
airflow-webserver-1  | [2025-03-01T22:21:45.484+0000] {override.py:1496} INFO - Inserted Role: User
airflow-webserver-1  | [2025-03-01T22:21:45.486+0000] {override.py:1951} INFO - Added Permission can read on DAGs to role User
airflow-webserver-1  | [2025-03-01T22:21:45.496+0000] {override.py:1951} INFO - Added Permission can read on DAG Dependencies to role User
airflow-webserver-1  | [2025-03-01T22:21:45.507+0000] {override.py:1951} INFO - Added Permission can read on DAG Code to role User
airflow-webserver-1  | [2025-03-01T22:21:45.510+0000] {override.py:1951} INFO - Added Permission can read on DAG Runs to role User
airflow-webserver-1  | [2025-03-01T22:21:45.524+0000] {override.py:1951} INFO - Added Permission can read on Datasets to role User
airflow-webserver-1  | [2025-03-01T22:21:45.537+0000] {override.py:1951} INFO - Added Permission can read on Cluster Activity to role User
airflow-webserver-1  | [2025-03-01T22:21:45.545+0000] {override.py:1951} INFO - Added Permission can read on Pools to role User
airflow-webserver-1  | [2025-03-01T22:21:45.555+0000] {override.py:1951} INFO - Added Permission can read on ImportError to role User
airflow-webserver-1  | [2025-03-01T22:21:45.563+0000] {override.py:1951} INFO - Added Permission can read on DAG Warnings to role User
airflow-webserver-1  | [2025-03-01T22:21:45.570+0000] {override.py:1951} INFO - Added Permission can read on Jobs to role User
airflow-webserver-1  | [2025-03-01T22:21:45.574+0000] {override.py:1951} INFO - Added Permission can read on My Password to role User
airflow-webserver-1  | [2025-03-01T22:21:45.580+0000] {override.py:1951} INFO - Added Permission can edit on My Password to role User
airflow-webserver-1  | [2025-03-01T22:21:45.583+0000] {override.py:1951} INFO - Added Permission can read on My Profile to role User
airflow-webserver-1  | [2025-03-01T22:21:45.587+0000] {override.py:1951} INFO - Added Permission can edit on My Profile to role User
airflow-webserver-1  | [2025-03-01T22:21:45.590+0000] {override.py:1951} INFO - Added Permission can read on SLA Misses to role User
airflow-webserver-1  | [2025-03-01T22:21:45.595+0000] {override.py:1951} INFO - Added Permission can read on Task Instances to role User
airflow-webserver-1  | [2025-03-01T22:21:45.601+0000] {override.py:1951} INFO - Added Permission can read on Task Logs to role User
airflow-webserver-1  | [2025-03-01T22:21:45.605+0000] {override.py:1951} INFO - Added Permission can read on XComs to role User
airflow-webserver-1  | [2025-03-01T22:21:45.615+0000] {override.py:1951} INFO - Added Permission can read on Website to role User
airflow-webserver-1  | [2025-03-01T22:21:45.620+0000] {override.py:1951} INFO - Added Permission menu access on Browse to role User
airflow-webserver-1  | [2025-03-01T22:21:45.623+0000] {override.py:1951} INFO - Added Permission menu access on DAGs to role User
airflow-webserver-1  | [2025-03-01T22:21:45.629+0000] {override.py:1951} INFO - Added Permission menu access on DAG Dependencies to role User
airflow-webserver-1  | [2025-03-01T22:21:45.633+0000] {override.py:1951} INFO - Added Permission menu access on DAG Runs to role User
airflow-webserver-1  | [2025-03-01T22:21:45.635+0000] {override.py:1951} INFO - Added Permission menu access on Datasets to role User
airflow-webserver-1  | [2025-03-01T22:21:45.638+0000] {override.py:1951} INFO - Added Permission menu access on Cluster Activity to role User
airflow-webserver-1  | [2025-03-01T22:21:45.640+0000] {override.py:1951} INFO - Added Permission menu access on Documentation to role User
airflow-webserver-1  | [2025-03-01T22:21:45.645+0000] {override.py:1951} INFO - Added Permission menu access on Docs to role User
airflow-webserver-1  | [2025-03-01T22:21:45.648+0000] {override.py:1951} INFO - Added Permission menu access on Jobs to role User
airflow-webserver-1  | [2025-03-01T22:21:45.652+0000] {override.py:1951} INFO - Added Permission menu access on SLA Misses to role User
airflow-webserver-1  | [2025-03-01T22:21:45.655+0000] {override.py:1951} INFO - Added Permission menu access on Task Instances to role User
airflow-webserver-1  | [2025-03-01T22:21:45.658+0000] {override.py:1951} INFO - Added Permission can edit on DAGs to role User
airflow-webserver-1  | [2025-03-01T22:21:45.661+0000] {override.py:1951} INFO - Added Permission can delete on DAGs to role User
airflow-webserver-1  | [2025-03-01T22:21:45.664+0000] {override.py:1951} INFO - Added Permission can create on Task Instances to role User
airflow-webserver-1  | [2025-03-01T22:21:45.667+0000] {override.py:1951} INFO - Added Permission can edit on Task Instances to role User
airflow-webserver-1  | [2025-03-01T22:21:45.673+0000] {override.py:1951} INFO - Added Permission can delete on Task Instances to role User
airflow-webserver-1  | [2025-03-01T22:21:45.677+0000] {override.py:1951} INFO - Added Permission can create on DAG Runs to role User
airflow-webserver-1  | [2025-03-01T22:21:45.682+0000] {override.py:1951} INFO - Added Permission can edit on DAG Runs to role User
airflow-webserver-1  | [2025-03-01T22:21:45.686+0000] {override.py:1951} INFO - Added Permission can delete on DAG Runs to role User
airflow-webserver-1  | [2025-03-01T22:21:45.704+0000] {override.py:1900} INFO - Created Permission View: can create on Datasets
airflow-webserver-1  | [2025-03-01T22:21:45.710+0000] {override.py:1951} INFO - Added Permission can create on Datasets to role User
airflow-webserver-1  | [2025-03-01T22:21:45.722+0000] {override.py:1496} INFO - Inserted Role: Op
airflow-webserver-1  | [2025-03-01T22:21:45.730+0000] {override.py:1951} INFO - Added Permission can read on DAGs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.764+0000] {override.py:1951} INFO - Added Permission can read on DAG Dependencies to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.774+0000] {override.py:1951} INFO - Added Permission can read on DAG Code to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.777+0000] {override.py:1951} INFO - Added Permission can read on DAG Runs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.787+0000] {override.py:1951} INFO - Added Permission can read on Datasets to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.794+0000] {override.py:1951} INFO - Added Permission can read on Cluster Activity to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.799+0000] {override.py:1951} INFO - Added Permission can read on Pools to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.807+0000] {override.py:1951} INFO - Added Permission can read on ImportError to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.814+0000] {override.py:1951} INFO - Added Permission can read on DAG Warnings to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.817+0000] {override.py:1951} INFO - Added Permission can read on Jobs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.821+0000] {override.py:1951} INFO - Added Permission can read on My Password to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.825+0000] {override.py:1951} INFO - Added Permission can edit on My Password to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.828+0000] {override.py:1951} INFO - Added Permission can read on My Profile to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.833+0000] {override.py:1951} INFO - Added Permission can edit on My Profile to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.838+0000] {override.py:1951} INFO - Added Permission can read on SLA Misses to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.845+0000] {override.py:1951} INFO - Added Permission can read on Task Instances to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.856+0000] {override.py:1951} INFO - Added Permission can read on Task Logs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.860+0000] {override.py:1951} INFO - Added Permission can read on XComs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.867+0000] {override.py:1951} INFO - Added Permission can read on Website to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.870+0000] {override.py:1951} INFO - Added Permission menu access on Browse to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.873+0000] {override.py:1951} INFO - Added Permission menu access on DAGs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.877+0000] {override.py:1951} INFO - Added Permission menu access on DAG Dependencies to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.880+0000] {override.py:1951} INFO - Added Permission menu access on DAG Runs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.883+0000] {override.py:1951} INFO - Added Permission menu access on Datasets to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.885+0000] {override.py:1951} INFO - Added Permission menu access on Cluster Activity to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.888+0000] {override.py:1951} INFO - Added Permission menu access on Documentation to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.891+0000] {override.py:1951} INFO - Added Permission menu access on Docs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.893+0000] {override.py:1951} INFO - Added Permission menu access on Jobs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.895+0000] {override.py:1951} INFO - Added Permission menu access on SLA Misses to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.897+0000] {override.py:1951} INFO - Added Permission menu access on Task Instances to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.899+0000] {override.py:1951} INFO - Added Permission can edit on DAGs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.901+0000] {override.py:1951} INFO - Added Permission can delete on DAGs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.903+0000] {override.py:1951} INFO - Added Permission can create on Task Instances to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.905+0000] {override.py:1951} INFO - Added Permission can edit on Task Instances to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.906+0000] {override.py:1951} INFO - Added Permission can delete on Task Instances to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.908+0000] {override.py:1951} INFO - Added Permission can create on DAG Runs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.909+0000] {override.py:1951} INFO - Added Permission can edit on DAG Runs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.912+0000] {override.py:1951} INFO - Added Permission can delete on DAG Runs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.916+0000] {override.py:1951} INFO - Added Permission can create on Datasets to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.919+0000] {override.py:1951} INFO - Added Permission can read on Configurations to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.920+0000] {override.py:1951} INFO - Added Permission menu access on Admin to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.922+0000] {override.py:1951} INFO - Added Permission menu access on Configurations to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.924+0000] {override.py:1951} INFO - Added Permission menu access on Connections to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.926+0000] {override.py:1951} INFO - Added Permission menu access on Pools to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.927+0000] {override.py:1951} INFO - Added Permission menu access on Plugins to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.929+0000] {override.py:1951} INFO - Added Permission menu access on Variables to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.930+0000] {override.py:1951} INFO - Added Permission menu access on Providers to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.932+0000] {override.py:1951} INFO - Added Permission menu access on XComs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.934+0000] {override.py:1951} INFO - Added Permission can create on Connections to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.937+0000] {override.py:1951} INFO - Added Permission can read on Connections to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.939+0000] {override.py:1951} INFO - Added Permission can edit on Connections to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.942+0000] {override.py:1951} INFO - Added Permission can delete on Connections to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.948+0000] {override.py:1951} INFO - Added Permission can create on Pools to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.951+0000] {override.py:1951} INFO - Added Permission can edit on Pools to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.954+0000] {override.py:1951} INFO - Added Permission can delete on Pools to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.957+0000] {override.py:1951} INFO - Added Permission can read on Plugins to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.959+0000] {override.py:1951} INFO - Added Permission can read on Providers to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.961+0000] {override.py:1951} INFO - Added Permission can create on Variables to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.963+0000] {override.py:1951} INFO - Added Permission can read on Variables to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.965+0000] {override.py:1951} INFO - Added Permission can edit on Variables to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.966+0000] {override.py:1951} INFO - Added Permission can delete on Variables to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.969+0000] {override.py:1951} INFO - Added Permission can delete on XComs to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.973+0000] {override.py:1900} INFO - Created Permission View: can delete on Datasets
airflow-webserver-1  | [2025-03-01T22:21:45.976+0000] {override.py:1951} INFO - Added Permission can delete on Datasets to role Op
airflow-webserver-1  | [2025-03-01T22:21:45.981+0000] {override.py:1951} INFO - Added Permission can read on DAGs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:45.986+0000] {override.py:1951} INFO - Added Permission can read on DAG Dependencies to role Admin
airflow-webserver-1  | [2025-03-01T22:21:45.991+0000] {override.py:1951} INFO - Added Permission can read on DAG Code to role Admin
airflow-webserver-1  | [2025-03-01T22:21:45.995+0000] {override.py:1951} INFO - Added Permission can read on Datasets to role Admin
airflow-webserver-1  | [2025-03-01T22:21:45.999+0000] {override.py:1951} INFO - Added Permission can read on Cluster Activity to role Admin
airflow-webserver-1  | [2025-03-01T22:21:46.003+0000] {override.py:1951} INFO - Added Permission can read on ImportError to role Admin
airflow-webserver-1  | [2025-03-01T22:21:46.007+0000] {override.py:1951} INFO - Added Permission can read on DAG Warnings to role Admin
airflow-webserver-1  | [2025-03-01T22:21:46.011+0000] {override.py:1951} INFO - Added Permission can read on Task Logs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:46.015+0000] {override.py:1951} INFO - Added Permission can read on Website to role Admin
airflow-webserver-1  | [2025-03-01T22:21:46.017+0000] {override.py:1951} INFO - Added Permission can edit on DAGs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:46.019+0000] {override.py:1951} INFO - Added Permission can delete on DAGs to role Admin
airflow-webserver-1  | [2025-03-01T22:21:46.023+0000] {override.py:1951} INFO - Added Permission can create on Datasets to role Admin
airflow-webserver-1  | [2025-03-01T22:21:46.028+0000] {override.py:1951} INFO - Added Permission can delete on Datasets to role Admin
airflow-webserver-1  | [2025-03-01 22:21:46 +0000] [20] [INFO] Starting gunicorn 23.0.0
airflow-scheduler-1  | [2025-03-01T22:21:46.269+0000] {executor_loader.py:254} INFO - Loaded executor: CeleryExecutor
airflow-scheduler-1  | [2025-03-01T22:21:46.315+0000] {scheduler_job_runner.py:935} INFO - Starting the scheduler
airflow-scheduler-1  | [2025-03-01T22:21:46.315+0000] {scheduler_job_runner.py:942} INFO - Processing each file at most -1 times
airflow-scheduler-1  | [2025-03-01T22:21:46.319+0000] {manager.py:174} INFO - Launched DagFileProcessorManager with pid: 42
airflow-scheduler-1  | [2025-03-01T22:21:46.320+0000] {scheduler_job_runner.py:1847} INFO - Adopting or resetting orphaned tasks for active dag runs
airflow-scheduler-1  | [2025-03-01T22:21:46.323+0000] {settings.py:63} INFO - Configured default timezone UTC
airflow-worker-1     | [2025-03-01 22:21:46,849: WARNING/MainProcess] /home/airflow/.local/lib/python3.12/site-packages/celery/worker/consumer/consumer.py:508: CPendingDeprecationWarning: The broker_connection_retry configuration setting will no longer determine
airflow-worker-1     | whether broker connection retries are made during startup in Celery 6.0 and above.
airflow-worker-1     | If you wish to retain the existing behavior for retrying connections on startup,
airflow-worker-1     | you should set broker_connection_retry_on_startup to True.
airflow-worker-1     |   warnings.warn(
airflow-worker-1     |
airflow-worker-1     | [2025-03-01 22:21:46,859: INFO/MainProcess] Connected to redis://redis:6379/0
airflow-worker-1     | [2025-03-01 22:21:46,861: WARNING/MainProcess] /home/airflow/.local/lib/python3.12/site-packages/celery/worker/consumer/consumer.py:508: CPendingDeprecationWarning: The broker_connection_retry configuration setting will no longer determine
airflow-worker-1     | whether broker connection retries are made during startup in Celery 6.0 and above.
airflow-worker-1     | If you wish to retain the existing behavior for retrying connections on startup,
airflow-worker-1     | you should set broker_connection_retry_on_startup to True.
airflow-worker-1     |   warnings.warn(
airflow-worker-1     |
airflow-worker-1     | [2025-03-01 22:21:46,866: INFO/MainProcess] mingle: searching for neighbors
airflow-worker-1     | [2025-03-01 22:21:47,879: INFO/MainProcess] mingle: all alone
airflow-worker-1     | [2025-03-01 22:21:47,896: INFO/MainProcess] celery@f361c712cdbb ready.
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/airflow/providers/elasticsearch/hooks/elasticsearch.py:26 DeprecationWarning: Importing from the 'elasticsearch.client' module is deprecated. Instead use 'elasticsearch' module for importing the client.
airflow-scheduler-1  | 127.0.0.1 - - [01/Mar/2025 22:21:50] "GET /health HTTP/1.1" 200 -
airflow-webserver-1  | [2025-03-01T22:21:50.449+0000] {providers_manager.py:287} INFO - Optional provider feature disabled when importing 'airflow.providers.google.leveldb.hooks.leveldb.LevelDBHook' from 'apache-airflow-providers-google' package
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/batch/models/_models_py3.py:4839 SyntaxWarning: invalid escape sequence '\s'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:175 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:222 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1151 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1248 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1271 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1406 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1439 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1495 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1683 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:1750 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:2025 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:2110 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:2407 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:2468 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:3987 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:4096 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:4127 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:4186 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:4225 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:4275 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:5209 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:5265 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:5302 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:5358 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:6437 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:6497 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:6538 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:6588 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:7023 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:7096 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:7267 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:7333 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:7378 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:7440 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:8222 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:8282 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:8322 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:8368 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:9475 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:9531 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:10532 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:10588 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:10625 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:10680 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:10923 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:10979 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:11016 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:11072 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:11231 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:11282 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:11420 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:11477 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:12300 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:12383 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:12439 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:12524 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:13019 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:13090 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:13139 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:13200 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:13886 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:13941 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:13977 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:14026 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:14318 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:14388 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:14436 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:14492 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:14744 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:14810 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:15415 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:15482 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:15527 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:15578 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:15897 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:15953 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:16617 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:16674 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:16712 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:16780 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:16932 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:16988 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:17025 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:17090 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:17228 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:17284 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:20234 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:20289 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:20862 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:20921 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:20960 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:21014 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:21316 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:21377 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:21418 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:21478 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:21612 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:21668 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:22155 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:22218 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:22559 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:22626 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:22671 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:22722 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:23061 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:23128 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:23173 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:23224 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:23511 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:23567 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:23968 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:24018 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:25343 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:25398 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:25434 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:25485 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:26723 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:26779 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:27121 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:27177 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:27461 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:27517 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:28053 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:28109 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:28536 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:28592 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:28932 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:28982 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:30727 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:30783 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:31296 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:31344 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:31617 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:31673 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:32120 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:32176 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:32339 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:32395 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:32432 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:32487 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:33502 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:33558 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:33869 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:33928 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:33967 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:34021 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:34739 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:34806 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:34852 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:34908 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:36915 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:36971 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:37417 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:37473 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:37845 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:37901 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:38208 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:38264 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:38301 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:38351 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:38690 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:38758 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:39141 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:39192 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:39419 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:39487 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:39683 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:39738 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:40019 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:40084 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41138 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41196 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41359 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41415 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41452 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41507 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41875 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:41947 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:42441 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:42497 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:42534 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:42590 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:42627 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:42692 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43020 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43079 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43118 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43168 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43514 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43573 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43612 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43666 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:43989 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:44045 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:44386 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:44442 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:45003 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:45058 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:45444 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:45499 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:46042 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:46098 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:46702 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:46758 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:47000 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:47050 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:47648 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:47704 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:48113 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:48190 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:48244 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:48321 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:49499 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:49555 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:49932 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50002 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50052 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50107 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50379 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50449 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50499 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50554 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50590 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50660 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50710 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:50770 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51046 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51116 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51166 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51226 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51485 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51540 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51787 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51851 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51895 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:51958 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:52212 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:52275 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:52463 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:52532 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:53040 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:53111 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:53334 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:53407 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:53961 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:54059 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:54322 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:54398 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:55022 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:55078 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:55310 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:55365 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:56196 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:56248 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:56508 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:56564 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57087 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57147 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57187 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57237 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57560 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57620 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57660 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:57710 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59106 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59162 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59316 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59396 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59452 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59535 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59594 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59677 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59733 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:59818 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:60639 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:60722 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:60778 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:60863 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61167 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61250 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61306 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61387 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61696 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61752 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61954 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:61992 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:62660 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:62715 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:63882 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:63946 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:64582 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:64674 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:64940 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:65014 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:65117 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:65199 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:65385 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:65441 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:65874 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:65950 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:66003 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:66087 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:66686 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:66779 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:66918 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:66964 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:67735 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:67791 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:68043 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:68097 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:68532 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/azure/synapse/artifacts/models/_models_py3.py:68588 SyntaxWarning: invalid escape sequence '\d'
airflow-webserver-1  | /home/airflow/.local/lib/python3.12/site-packages/snowflake/sqlalchemy/base.py:1068 SAWarning: The GenericFunction 'flatten' is already registered and is going to be overridden.
airflow-webserver-1  | [2025-03-01 22:21:52 +0000] [20] [INFO] Listening at: http://0.0.0.0:8080 (20)
airflow-webserver-1  | [2025-03-01 22:21:52 +0000] [20] [INFO] Using worker: sync
airflow-webserver-1  | [2025-03-01 22:21:52 +0000] [46] [INFO] Booting worker with pid: 46
airflow-webserver-1  | [2025-03-01 22:21:52 +0000] [47] [INFO] Booting worker with pid: 47
airflow-webserver-1  | [2025-03-01 22:21:52 +0000] [48] [INFO] Booting worker with pid: 48
airflow-webserver-1  | [2025-03-01 22:21:52 +0000] [49] [INFO] Booting worker with pid: 49
airflow-webserver-1  | 127.0.0.1 - - [01/Mar/2025:22:21:55 +0000] "GET /health HTTP/1.1" 200 318 "-" "curl/7.88.1"
airflow-scheduler-1  | 127.0.0.1 - - [01/Mar/2025 22:22:20] "GET /health HTTP/1.1" 200 -
airflow-webserver-1  | 127.0.0.1 - - [01/Mar/2025:22:22:25 +0000] "GET /health HTTP/1.1" 200 318 "-" "curl/7.88.1"
airflow-triggerer-1  | [2025-03-01T22:22:42.994+0000] {triggerer_job_runner.py:510} INFO - 0 triggers currently running


