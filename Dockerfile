FROM python:3.11-slim

WORKDIR /app

# Скопировать зависимости
COPY requirements.txt .

# Установить зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Скопировать весь проект
COPY . .

# Запустить FastAPI с uvicorn
CMD ["uvicorn", "app.web:app", "--host", "0.0.0.0", "--port", "8000"]
