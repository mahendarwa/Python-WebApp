FROM ubuntu

RUN apt-get update
RUN apt install apache2 -y
RUN apt-get install -y python
RUN apt-get install python-pip -y
RUN pip install flask

COPY app.py /opt/app.py

EXPOSE 5000

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
