## Run docker compose

### Run docker compose with specific config file
`docker compose -f docker-compose.dev.yaml up`

### Run docker compose with specific config file and specified env file
`docker compose -f docker-compose.dev.yaml --env-file .env.local up`

### Additional options
- `-d` - run in detach mode
- `--build` - build images before run

## Stop docker compose

### Stop docker compose with specific config file
`docker compose -f docker-compose.dev.yaml down`

If config file was specified on running docker compose, then it should be specified on stopping as well.

## Pushing an image to container registry

1. Login to a docker hub

    `docker login -u alexkad`

2. Build and image for pushing to registry

    `docker build --target app -t alexkad/php-composer:1.0 -f ./php/Dockerfile .`

3. Push and image to a registry

    `docker push alexkad/php-composer:1.0`

Tag name could be different for each push: `new tag => new image`