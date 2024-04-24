FROM python:3
RUN pip install django==3.2
copy . .
RUN python setup.py migrate
EXPOSE 8000
CMD ["python","setup.py","runserver","0.0.0.0:8000"]
