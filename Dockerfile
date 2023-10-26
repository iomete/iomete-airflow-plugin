FROM apache/airflow:2.7.1

USER root

RUN apt-get update
RUN pip install Flask~=2.2.3 iomete-sdk iomete-airflow-plugin apache-airflow-providers-trino

USER airflow