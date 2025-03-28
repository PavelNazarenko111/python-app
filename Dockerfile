# Используем базовый образ Python
FROM python:3.10-slim

# Устанавливаем рабочую директорию
WORKDIR /python-app

# Копируем файлы в контейнер
COPY . .

# Обновляем pip и устанавливаем зависимости
RUN pip install --upgrade pip
RUN pip install flask

# Устанавливаем переменные окружения
ENV PORT=5500
ENV HOST=0.0.0.0

# Открываем порт
EXPOSE 5500

# Запускаем приложение
CMD ["python", "main.py"]
