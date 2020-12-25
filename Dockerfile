FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt 
RUN pip install six
RUN pip install requests
COPY . /code/
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]
Expose 8000
