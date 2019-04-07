FROM python:3.6

WORKDIR /ovodovme

ADD . /ovodovme

RUN pip install --upgrade pip
RUN pip install flask==1.0 uwsgi==2.0

EXPOSE 80

CMD ["uwsgi", "--socket", "0.0.0.0:3031", \
               "--wsgi-file", "ovodovme.py", \
               "--callable", "app"]
