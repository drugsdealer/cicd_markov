# Используем самый легкий базовый образ
FROM alpine:3.18

# Устанавливаем Python просто для вида (необязательно)
RUN apk add --no-cache python3

# Устанавливаем рабочую директорию
WORKDIR /app

# Создаем фейковый файл приложения внутри контейнера
RUN echo 'print("Hello from CI/CD pipeline!")' > app.py

# Запуск
CMD ["python3", "app.py"]
