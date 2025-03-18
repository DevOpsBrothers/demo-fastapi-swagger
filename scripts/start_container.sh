version=$(curl -s "https://hub.docker.com/v2/repositories/pritamchk98/fastapi_calc\/tags/" | jq -r '.results[].name' | head -n 1)
docker pull pritamchk98/fastapi_calc:${version}

docker run -d -p 80:8000 /pritamchk98/fastapi_calc:${version}
