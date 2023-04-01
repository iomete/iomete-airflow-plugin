## Running locally on docker
```bash
docker-compose up --build
```

## Installing helm to kubernetes
```bash
helm repo add apache-airflow https://airflow.apache.org
helm upgrade --install airflow apache-airflow/airflow --namespace airflow --create-namespace -f ./helm/values.yaml
```