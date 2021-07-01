FROM python:3.6-slim

RUN mkdir /Flask-Blog
COPY requirements.txt /Flask-Blog
WORKDIR /Flask-Blog
RUN pip3 install -r requirements.txt

COPY . /Flask-Blog

CMD ["gunicorn", "wsgi:app", "-w 1", "-b 0.0.0.0:80"]
