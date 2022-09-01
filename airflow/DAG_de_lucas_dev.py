from airflow import DAG
from datetime import datetime, timedelta
from airflow.operators.bash import BashOperator
from custom_operators.tworp_spark_submit_operator import TwoRPSparkSubmitOperator

usuario = '2rp-lucasa'
default_args = {
    "owner": usuario,
    "start_date": datetime(2022, 8, 29),
    "depends_on_past": False,
    "retries": 0,
    "retry_delay": timedelta(minutes=5),
    "run_as_user": usuario,
    "proxy_user": usuario
}

with DAG("de_lucas_dev", start_date=datetime(2022, 8, 29), schedule_interval=None, default_args=default_args, catchup=False) as dag:


    kinit = BashOperator(
        task_id="kinit",
        bash_command=f'kinit -kt /home/{usuario}/{usuario}.keytab {usuario}'
    )

    job_pokemon = TwoRPSparkSubmitOperator(
        task_id="job_pokemon",
        name="job_pokemon",
        conn_id="spark_conn",
        application=f'/home/{usuario}/pokemons_oldschool.py',
        keytab=f'/home/{usuario}/{usuario}.keytab',
        principal=usuario,
        proxy_user=None,
        verbose=True
    )
   

    kinit >> job_pokemon