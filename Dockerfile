FROM django

ADD . /ecomapp

WORKDIR /ecomapp

RUN pip install six pip install requests

CMD [ "python", "./manage.py runserver 0.0.0.0:8000" ]
