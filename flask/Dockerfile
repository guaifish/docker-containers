FROM python:3.8
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
ENV FLASK_APP=main.py
EXPOSE 5000
COPY . .
CMD [ "flask", "run", "--host=0.0.0.0" ]
