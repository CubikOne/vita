## 1.Ansible.

1) Создадим структуру файлов для ansible. Создадим роль copy для копирование файлов с машины на сервер.
    1) Файл hosts.ini содержит список серверов для копирования файлов
    2) Файл playbook.yml содержит список ролей 
    3) Файл main.yml содержи список задач для исполнения(в нашем случае копирования)  


2) with_items — устаревший способ итерирования списка в Ansible. Используется для выполнения одной и той же задачи с несколькими элементами.  
loop — новый и более гибкий способ достижения той же цели

3) Для откладки в Ansible можно использовать флаги -v, -vv, -vvv, при запуске команды ansible-playbook. Это даст нам более детализированный вывод о том что делает Ansible.

## 2.Bash-скрипт.
1) Напишем bash-скрипт для парсинга логов и поиска слова php7.4, так же который считает количество строк в файле и время выполнения скрипта.

## 3.Docker-compose.

1) Намишем докер-компос файл с 3 сервисами(nginx, php, postgres). Создадим сеть vita.

2) Для запуска docker-compose ```docker-compose up -d``` флаг -d запускает сервисы в фоновом режиме.

3) Если default.conf изменится на хост-системе, он также изменится внутри контейнера из-за монтирования тома. При этом нам придется перезагрузить Nginx для применения изменений.

4) При внесении изменений в docker-compose, необходимо будет пересоздать контейнеры с помощью ```docker-compose up -d```

5) Я работал и с docker-compose и с docker-swarm.
    1) docker-compose легче использовать для локальной разработки и простых настроек, например для тестирования.
    2) docker-swarm подходил больше для продуктивных сред, поддерживает масштабирование, балансировку, и более мощные инструменты оркестрации контейнеров.
