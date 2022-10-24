# Лабораторна робота №3

## Docker

### Завдання

1. Використання готових Docker Images.
2. Використання Docker Compose.
3. Створення HTML сторінки та занесення її в Docker Image. Залити даний Docker Image на Docker Hub.
4. Скачати Docker Image когось із групи і розвернути в себе контейнер з HTML сторінкою на порті 8086 ззовні.

## Хід роботи

1. Використати образ wordpress та розвернути сайт із безкоштовною темою.
   <img src="/Img/1.png" height="300">
   <img src="/Img/2.png" height="300">
   <img src="/Img/3.png" height="300">

2. Використання Docker Compose.
Docker Compose - це дуже потужний інструмент, що дозволяє дуже швидко розгортати програми, що відрізняються складною архітектурою.
Файл docker-compose.yml. - це файл Docker Compose, який міститиме інструкції, необхідні для запуску та налаштування сервісів.
Файл index.html. - у цьому файлі буде фрагмент тексту, який має вивести клієнтський додаток.
Файл Dockerfile. - це файл Docker, який міститиме інструкції, необхідні для створення оточення сервера.
Файли з розширенням .yml є файлами даних.
YAML виступає за YAML Не Markup Language і ця технологія формату файлу використовується в документах. Ці документи будуть збережені в текстовому форматі, так і додаються з розширенням .yml . Ефективна серіалізація даних була основною метою розробників .yml форматі, так як вона дозволяє користувачам створювати .yml файли з вмістом незалежної від будь-якої конкретної мови розмітки.

version: '3'

services:
  # Database
  db:
    image: mysql:latest
    volumes:
      - db_data:/var/lib/mysql
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: password
      MYSQL_DATABASE: wordpress
      MYSQL_USER: wordpress
      MYSQL_PASSWORD: wordpress
    networks:
      - wpsite
  # Wordpress
  wordpress:
    depends_on:
      - db
    image: wordpress:latest
    ports:
      - "8000:80"
    restart: always
    volumes: ['./:/var/www/html']
    environment:
      WORDPRESS_DB_HOST: db:3306
      WORDPRESS_DB_USER: wordpress
      WORDPRESS_DB_PASSWORD: wordpress
    networks:
      - wpsite
networks:
  wpsite:
volumes:
  db_data:
  
   <img src="/Img/4.png" height="300">

3. Створення HTML сторінки та занесення її в Docker Image.

- Створити HTML сторінку із вашим ПІБ, групою та № Л.Р..
- Створити Docker Image із цією сторінкою.
- Реалізувати можливість запуску цієї сторінки з контейнера (потрібно sudo usermod -aG docker username сервер NGINX до прикладу).

- Перевірити на працездатність контейнера на основі вашого образу.
- Залити готовий образ на Docker Hub.
  <img src="/Img/4.png" height="300">
  <img src="/Img/5.png" height="300">
  <img src="/Img/6.png" height="300">
  <img src="/Img/8.png" height="300">

4. Скачати Docker Image когось із групи і розвернути в себе контейнер з HTML сторінкою на порті 8086 ззовні.
   <img src="/Img/7.png" height="300">

# Посилання: https://hub.docker.com/repository/docker/vasjabat/batrynweb
