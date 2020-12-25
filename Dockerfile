FROM django

ADD . /ecomtuts-master

WORKDIR /ecomtuts-master

RUN pip install -r requirements.txt pip install six pip install requests

CMD [ "python", "manage.py runserver", "0.0.0.0:8000" ]
Expose 8000
