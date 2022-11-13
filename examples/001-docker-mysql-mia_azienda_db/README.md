# Description

Databse (MySQL) created following [this Youtube Video Course](https://www.youtube.com/playlist?list=PLP5MAKLy8lP_zsv6uijqYTIjdVEYgWf44).

Used `Beekeeper Studio(Community Edition)` as SQL client.  
In `Beekeeper Studio(Community Edition)` I saved all queries, then exported to `beekeeper-queries` directory.

## Contents

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
