#!/bin/bash

cd `dirname "$0"`

# Yandex.Metrica logs load to ClickHouse script

# hits logs
python3 /home/logsloader/gsomlogs/logs_api_integration/metrica_logs_api.py -mode regular -source hits >> gsomlogs.log

# visits log
python3 /home/logsloader/gsomlogs/logs_api_integration/metrica_logs_api.py -mode regular -source visits >> gsomlogs.log
