# Запуск проекта

После клонирования проекта заходим в папку VKR
cd VKR

# Создаем .env файл
cp .env.example .env

# Обновляем композер
composer update

# Устанавливаем зависимости
npm install

# Генерируем ключ
php artisan key:generate

# Созданем новую mysql БД с названием VKR После импортируем дамп бд, который можно найти в папке web. Работоспособность была проверена через phpMyAdmin

# Вносим изменения в env файл 
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=vkr
DB_USERNAME=root
DB_PASSWORD=root

# Выполняем команду
npm run dev

# Запускаем приложение
php artisan serve
