FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3-venv
RUN apt-get install -y python3-pip

RUN python3 -m venv venv   //create virtual environmet
RUN . /venv/bin/activate && pip install flask

RUN apt install -y python3-flask
COPY app.py /opt/app.py

CMD ["python3", "app.py"]
