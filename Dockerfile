FROM python:3.9
# FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

LABEL maintainer="Axel Alxander Martins Benites <axel_nomore@hotmail.com>"

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

# 
# COPY ./main.py /app/
# copy project
COPY . .

# 
# CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8484"]
