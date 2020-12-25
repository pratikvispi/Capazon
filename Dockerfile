FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install Django
RUN pip install -r requirements.txt
RUN pip install Pillow
RUN pip install six
RUN pip install requests
COPY . /code/
CMD [ "python", "manage.py", "runserver", "127.0.0.1:8000" ]
Expose 8000
