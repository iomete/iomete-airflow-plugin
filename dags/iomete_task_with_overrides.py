from airflow import DAG, utils
from iomete_airflow_plugin.iomete_operator import IometeOperator

args = {
    "owner": "airflow",
    "email": ["airflow@example.com"],
    "depends_on_past": False,
    "start_date": utils.dates.days_ago(0, second=1),
}

dag = DAG(dag_id="iomete-task-with-args", default_args=args, schedule_interval=None)

task = IometeOperator(
    task_id="query-scheduler-task-with-arguments",
    job_id="1b0fc29b-5491-4c0a-94ea-48e304c3c72e",
    workspace_id="pceh7-816",
    config_override={
        "arguments": ["sample_arg1", "sample_arg2"]
    },
    dag=dag,
)
