FROM python:3.13-slim


ENV APP_PORT=8000\
    HOST_IP=0.0.0.0

WORKDIR /app
COPY .  .

RUN pip install --upgrade pip &&\
    pip install poetry 

RUN poetry install --no-root 


EXPOSE $APP_PORT



ENTRYPOINT ["sh", "startApp.sh"]