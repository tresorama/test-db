# Overview

This docker-compose has 2 services/containers, independents:
- **shadow-database**, used in Prisma
- **adminer**, used for inspecting databases in Planetscale, and shadow-database

## How to run - Shadow Database

1. Launch the container/service:
```bash
docker-compose up shadow-database
```  

2. Connect to the "shadow-database" from Prisma:  
For Prisma, is common to put db connection string in `.env`
```bash
# in .env
DATABASE_SHADOW_URL="mysql://root:helloworld@localhost:3308/shadow"

# in prisma/schema.prisma
datasource db {
  provider             = "mysql"
  url                  = env("DATABASE_URL") # Main DB
  shadowDatabaseUrl    = env("DATABASE_SHADOW_URL") # Shadow DB
}
```

3. (OPTIONAL) Connect to the "shadow-database" from any application:
```bash
# Connection to this database (FROM THE HOST MACHINE, or from Prisma):
# - server: localhost
# - username: root
# - password: helloworld
# - port: 3308
# - url: mysql://root:helloworld@localhost:3308/shadow
#
# Connection to this database (FROM OTHER DOCKER CONTAINERS, like "adminer"):
# - server: shadow-database
# - username: root
# - password: helloworld
# - port: 3306
# - url: mysql://root:helloworld@localhost:3306/shadow
#
```

## How to run - Adminer

1. Launch the container/service:
```bash
docker-compose up adminer
```

2. Launch Adminer GUI at http://localhost:9090.

## How to inspect Planetscale Db with Adminer

1. Connect to db using the Planetscale "proxy" ([more infos](https://planetscale.com/docs/tutorials/connect-any-application#option-2-connect-using-the-planet-scale-proxy)).  
```bash
pscale connect DATABASE BRANCH

# if success will print
Secure connection to database test-theo-next-planetscale-tailwind and branch development is established!.
Local address to connect your application: 127.0.0.1:3306.
```

2. In Adminer use this credentials:
```bash
System    MySQL
Server    host.docker.internal:3306
Username  
Password	
Database  <DATABASE_NAME>
```
> **NOTE - Why not 127.0.01 ?**  
> If you use Adminer via Docker (like in this project)
> you must use `host.docker.internal`instead of `127.0.01` as `host` in Adminer connection form.
>
> More infos:
> https://stackoverflow.com/a/67272342/11447191