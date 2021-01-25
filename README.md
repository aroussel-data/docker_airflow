# docker_airflow
Repo for Apache's workflow management tool based on https://github.com/puckel/docker-airflow .

**Prerequisites**
- [docker](https://www.docker.com/)
- [docker-compose](https://docs.docker.com/compose/)

**Running**
- CeleryExeuctor: `docker-compose up -d`
- LocalExeuctor: `docker-compose -f docker-compose-local.yml up -d`
- Airflow will be running on localhost:8080

**NOTES**
- For the moment this is still just a sequential executor. I'll be migrating it to a Local and eventually Celery executor.
