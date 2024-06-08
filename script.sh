#!/bin/bash

start_time=$(date +%s)

count=$(grep -r "php7.4" /var/log/nginx/access.log | wc -l)

echo "Количество строк, содержащих 'php7.4': $count"

end_time=$(date +%s)

execution_time=$((end_time-start_time))

echo "Время выполнения скрипта: $execution_time секунд."

./script.sh > output_file.txt
