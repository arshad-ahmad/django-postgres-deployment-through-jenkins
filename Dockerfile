FROM python:2.7

       
RUN mkdir app
COPY django/notejam app/


COPY django/requirements.txt ./
RUN pip install -r requirements.txt
RUN pip install psycopg2
WORKDIR app/

EXPOSE 5000
