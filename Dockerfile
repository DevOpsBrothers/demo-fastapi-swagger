FROM python:3.13-slim

LABEL author="pritam chakraborty"\
    created_at="16-MAR-25"

ENV APP_PORT=8000\
    HOST_IP=0.0.0.0

WORKDIR /app
COPY .  .

RUN pip install --upgrade pip &&\
    pip install poetry && poetry install --no-root 


EXPOSE $APP_PORT

ENTRYPOINT ["sh", "startApp.sh"]