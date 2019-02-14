#!/usr/bin/env bash

airflow version
airflow initdb
airflow webserver -p 8885
airflow scheduler
