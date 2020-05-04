import os
from airflow.models import DAG
from datetime import datetime, timedelta
from airflow.operators.bash_operator import BashOperator

default_args = {
            'owner': 'airflow',
            'depends_on_past': False,
            'start_date': datetime(2020, 1, 1, 0, 0),
            'email': ['airflow@example.com'],
            'email_on_failure': False,
            'email_on_retry': False,
            'retries': 0,
            'retry_delay': timedelta(minutes=5)
}

dag = DAG(dag_id='run_daily_fetcher', default_args=default_args, schedule_interval='0 8 * * *', catchup=False)

BashOperator(task_id='run_daily_fetcher', dag=dag,
                bash_command='{}/un_data_aggregator/scripts/run_container.sh '.format(os.environ['HOME']))

