from airflow import DAG
from airflow.operators.dummy import DummyOperator
from airflow.operators.python import PythonOperator
from airflow.utils.dates import days_ago
from airflow.operators.email import EmailOperator

import random
import time

# Function to generate random IoT data
def generate_iot_data(**kwargs):
    data = []
    for _ in range(60):  # 60 seconds x 5 minutes = 300 readings (1 every second)
        data.append(random.choice([0, 1]))
        time.sleep(1)  # Simulate 1-second intervals
    return data

# Function to aggregate the IoT data
def aggregate_machine_data(**kwargs):
    ti = kwargs['ti']
    data = ti.xcom_pull(task_ids='getting_iot_data')
    count_0 = data.count(0)
    count_1 = data.count(1)
    aggregated_data = {'count_0': count_0, 'count_1': count_1}
    return aggregated_data

# Email content generation
def create_email_content(**kwargs):
    ti = kwargs['ti']
    aggregated_data = ti.xcom_pull(task_ids='aggregate_machine_data')

    return f"Aggregated IoT Data:\nCount of 0: {aggregated_data['count_0']}\nCount of 1: {aggregated_data['count_1']}"

# Default arguments for the DAG
default_args = {
    'owner': 'airflow',
    'start_date': days_ago(1),
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 1,
}

# Define the DAG
with DAG(
    dag_id='iot_data_pipeline',
    default_args=default_args,
    schedule_interval=None,
    catchup=False
) as dag:

    start_task = DummyOperator(task_id='start_task')

    getting_iot_data = PythonOperator(
        task_id='getting_iot_data',
        python_callable=generate_iot_data,
    )

    aggregate_machine_data = PythonOperator(
        task_id='aggregate_machine_data',
        python_callable=aggregate_machine_data,
    )

    create_email = PythonOperator(
        task_id='create_email_content',
        python_callable=create_email_content,
    )

    end_task = DummyOperator(task_id='end_task')

    # Task dependencies
    start_task >> getting_iot_data >> aggregate_machine_data >> create_email >> end_task
