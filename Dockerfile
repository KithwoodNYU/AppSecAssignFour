FROM tiangolo/uwsgi-nginx-flask
#RUN apt-get update
#RUN apt-get -y install nginx uwsgi
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
#EXPOSE 8080
#CMD ["flask", "run", "-h", "0.0.0.0", "-p", "8080"]
