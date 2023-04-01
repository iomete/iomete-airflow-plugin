FROM apache/airflow:2.5.2

RUN pip install Flask~=2.2.3 iomete-sdk==1.0.1

COPY --chown=airflow:airflow . /opt/iomete_airflow_plugin/
RUN pip install --user -e /opt/iomete_airflow_plugin/