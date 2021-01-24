#!/usr/bin/env bash

# To enable this script to activate the virtualenv and set AIRFLOW_HOME, it must be run from working dir
cd $(dirname "$0")/../..

source venv/bin/activate
export AIRFLOW_HOME=`pwd`/airflow

airflow scheduler
