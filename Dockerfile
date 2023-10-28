FROM apache/airflow:2.7.1

RUN pip install Flask~=2.2.3 iomete-airflow-plugin
