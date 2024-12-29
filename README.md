## Типы docker-compose файлов

`minimal.yaml`
- Бот работает в режиме поллинга (только чат-режим)
- Все файлы превышающие по размеру 49мб будут заархивированы в rar с разбивкой на части по 49мб

`large_files.yaml`
- Бот работает в режиме поллинга (только чат-режим)
- Все файлы превышающие по размеру 1549мб будут заархивированы в rar с разбивкой на части по 1549мб
- **Требует получения APP-токена**

`full_build.yaml`
- Бот работает в режиме webhook ( чат-режим и web-режим )
- Все файлы превышающие по размеру 1549мб будут заархивированы в rar с разбивкой на части по 1549мб
- **Требует получения APP-токена**
- **Требуется статический IP и домен**

## Получение токена для бота

1. В боте [@BotFather](https://t.me/botfather) нажать старт, в меню бота выбрать команду */newbot*
2. Задать имя бота
3. Задать адрес бота ( обязательно должен заканчиваться на *_bot* )
4. Получить токен
![enter image description here](https://github.com/RedBuld/bot-docker/blob/main/README/1.new_bot_message.png?raw=true)

## Получение APP-токена

1. Перейти по адресу https://my.telegram.org/ и авторизоваться ( код придет в телеграм )
2. Выбрать пункт *API development tools* и заполнить форму

## Запуск бота

1. Установить docker/Docker Desktop
2. Скачать ZIP-архив и распаковать в папку

![enter image description here](https://github.com/RedBuld/bot-docker/blob/main/README/3.save_git.png?raw=true)
4. Выбрать какой вариант вы хотите использовать (см. первый блок)
5. Получить необходимые токены (см. пункты выше):
	- Полученный **токен бота** подставить в указанное поле в файле `.yaml`
	- ![enter image description here](https://github.com/RedBuld/bot-docker/blob/main/README/1.place_token_to_file.png?raw=true)
	- Полученные **api_id** и **api_hash**  подставить в указанные поля в файле `.yaml`
	- ![enter image description here](https://github.com/RedBuld/bot-docker/blob/main/README/2.place_api_to_file.png?raw=true)
6. В папке открыть терминал ( в случае windows зажатием Shift и нажатием Правой Кнопки Мыши) и выполнить команду:
    - `minimal.yaml` - `docker compose -f minimal.yaml up`
    - `large_files.yaml` - `docker compose -f large_files.yaml up`
    - `full_build.yaml` - `docker compose -f full_build.yaml up`
7. Дождаться, когда прекратится активное мельтешение логов и нажать `Ctrl + C`
8. Выполнить команду
    - `minimal.yaml` - `docker compose -f minimal.yaml up -d`
    - `large_files.yaml` - `docker compose -f large_files.yaml up -d`
    - `full_build.yaml` - `docker compose -f full_build.yaml up -d`
