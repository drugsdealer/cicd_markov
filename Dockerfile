# Используем самый легкий базовый образ
FROM alpine:3.18

# Устанавливаем Python просто для вида (необязательно)
RUN apk add --no-cache python3

# Создаем фейковый файл приложения
RUN echo 'print("Hello from CI/CD pipeline!")' > app.py

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем (на самом деле уже есть внутри)
COPY app.py .

# Запуск
CMD ["python3", "app.py"]
