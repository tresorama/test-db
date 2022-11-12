# Contents

- Database Server - Main Database: Docker 
  - HOST
    - `localhost` from host
    - `127.0.0.1` from host
    - `host.docker.internal` from other docker container
  - USER: `root`
  - PASSWORD: `helloworld`
  - PORT: `3308`
  - DATABASE_NAME: ``main
  - URL : `mysql://root:helloworld@localhost:3308/main`

# How to run

Check `docker/README.md` to spin up database server.

Recommended Client:
- Beekeeper Studio (Community Edition)
- Adminer
