# demo-fastapi-swagger

demo-fastapi-swagger will be used for building Docker image and deploy this in Clouds for learning purpose

# Pre-Req :

1. Docker
1. Python 3.13
1. Poetry (python virtual env and pkg manager kind of)

# How to use with out docker for Development purpose only

1. clone repo
1. once clone done go inside and run below command

```sh
poetry install --no-root
```

```sh
poetry shell
```

```sh
poetry run uvicorn fastapi_calc_app.main:app --host 0.0.0.0 --port 8000
```

# With Docker

1. make docker-compose with ENV var port as per your wish
1. make it up by `docker compose build` , then `docker compose up -d`
1. Run through docker cli
   - ```sh
         docker build -t <username>/<img_name>:<version> .

   - Run container
     - ```sh
       docker run -d --name <containerName> -e "APP_PORT=5000" -p "5000:5000" pritamchk98/<img_name>:<version>
       
   - Docker pull image and run container like above command
