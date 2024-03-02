FROM python:3.11-slim

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . /code

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8081"]

