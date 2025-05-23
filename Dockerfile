FROM python:3.12.2-slim
ENV context ''
ENV port 8000 
WORKDIR /code
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./app /code/app
CMD uvicorn app.main:app --host 0.0.0.0 --port $port
