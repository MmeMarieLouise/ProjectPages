# Notes

To run virtual environment
`cd venv`
`source venv/bin/activate`

To run tests `pytest testFile`

or for more detailed results `pytest testFile -v`

To get help `pytest -h`

Test style guidelines

`test_ClassName.py`

Pytest Fixtures

- Fixtures are functions that run before each test function to which it is applied. So basically achieves a fixed state.

- this can be used to feed data to the tests foe example database connections or URLs

Install Flask in the vm `pip3 install flask`

#### PostgreSQL

- use postgres image to run docker container

- [Docker official images for postgres](https://hub.docker.com/_/postgres)

- must add environment variables on that image `-e`

NOTE: must spin up two containers 
1. postgres db container
1. pgAdmin container (if using this dashboard  - to access dashboard, in browser enter *http://localhost:ip_address*)

#### Getting started with PostgreSQL

1. to install image locally, run `docker pull postgres:alpine` (alpine version)
1. check by running, `docker images`
1. to remove unused images run, `docker container rm <container_id>` or `docker container rm -f <container_id>`
1. start postgres instance, run `docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d -p <port_number>:<port_number> postgres:version` *NOTE* the port number is usually `5432`. Therefore, `5432:5432` means, expose the container port *5432* to the outside world. They can connect to it also using *5432*
1. to get in via BASH, run `docker exec -it <db_name> bash`
1. run `psql --help` to see list of PostgreSQL commands
1. to enter postgres shell run, `psql -U postgres`
- once inside you will see:
```
psql (11.5)
Type "help" for help.

postgres=#

```

1. check database default or super user - run, `\du`

- you should see under `role name` : `postgres`

- under `List of role Attributes`

```
Superuser, Create role, Create DB, Replication, Bypass RLS
 
```

##### Create database

1. to create database start writing SQL commands, `create database <db_name>`
1. to view databases run `\l`
1. to connect to the database run, `\c <db_name>` you will see :

```
You are now connected to database "<db_name>" as user "postgres".

```

1. you will be inside the database and will see `<db_name>=#` instead of `postgres=#`

##### Connect to database outside of docker

1. If you don't have PostgreSQL installed on your machine, open a new terminal window and run 

- `brew doctor` 
- `brew update`
- `brew install postgresql`
- to run PostgreSQL in the background, run `pg_ctl -D /usr/local/var/postgres start`
- to see PostgreSQL run, `postgres --help`
- run `psql -h <localhost/local_ip_address> -p 5432 -U postgres`
- enter password for your database
- to connect to your database run, `\c <db_name>`
- to quit run, `\q`

##### Create a table (SQL)

Enter each line and then press `enter`

```
CREATE TABLE <name>(
column1 data-type contraints,
column2 data-type contraints,
column3 data-type contraints,
);
```
- to see list of relations, run `\dt;`
- to see the contents of the table run, `\d <table_name> ;`
- add uuid extension, run `create extension if not exists "uuid-ossp";`
- to populate table, run 

```
INSERT INTO <table_name> (
( column1,
( column2,
( column3 )
VALUES ('value1','value2','value3');
```

###### connect database to application
- install psycopg2, run `python3 -m pip install --user psycopg2-binary` inside the virtual environment or when using pipenv `pipenv install psycopg2-binary`



#### docker tips

- for help, run `docker --help`
- for list of running containers run, `docker ps`
- to check list of all containers including exited run, `docker ps -a`
- to check logs run, `docker logs -f my_container_name`
- to run container,  `docker start my_container_name`
- to stop container, run `docker stop <container_id>`
