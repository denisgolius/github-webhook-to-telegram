FROM python:3.9-slim-buster

WORKDIR /app
ADD . /app
RUN cd /app

RUN apt-get update && apt-get install -y python3-pip python3 python3-venv -y

# RUN virtualenv venv
# RUN venv/bin/pip install -U -r requirements.txt
# RUN venv/bin/python main.py
RUN pip install -r requirements.txt

EXPOSE 50505
ENTRYPOINT ["python", "main.py"]  