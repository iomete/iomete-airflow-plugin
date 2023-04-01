FROM apache/airflow:2.5.2

RUN pip install Flask~=2.2.3 iomete-sdk==1.0.1