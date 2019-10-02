# Notes


#### check python 3 is installed
- run, `python3`
- to exit interactive interpreter run, `exit()`


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

##### SQL commands

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
- to query all the data in the db, run `SELECT * FROM <table_name>`

###### connect database to application
- install psycopg2, run `python3 -m pip install --user psycopg2-binary` inside the virtual environment or `pip3 install psycopg2` or when using pipenv `pipenv install psycopg2-binary`

- *NOTE:* `psycopg2` *=/=* `psycopg2-binary`, the packages contain the same code, but just have different names. Therefore, if I encounter an error I must debug with the following guidance from the exact package I installed.

create a database cluster

- enter the `psql` root, 
1. first run `docker exec -it <db_name> bash`
1. run, `su - postgres` to connect to postgres user
1. run, `pwd` to double check location and you should see `/var/lib/postgresql`
1. check postgres version, run `postgres -V` 
1. to initialise database cluster run, `initdb -D /var/lib/pgsql/11.5/data`


#### docker tips

- for help, run `docker --help`
- for list of running containers run, `docker ps`
- to check list of all containers including exited run, `docker ps -a`
- to check logs run, `docker logs -f my_container_name`
- to run container,  `docker start my_container_name`
- to stop container, run `docker stop <container_id>`

#### Multi container setup using Docker, Postgres, Conda, Flask and Jupyter Notebook

- spin up docker container using postgres image - run, `docker run postgres`
- run `docker ps` to check names
- in a another terminal, log into the container and start `psql` process, `docker exec -it infallible_lehmann psql -U <database username> -d <database name>`. You should see something like `root@b6e4e4c52f20:/#`
- or do then separately first run, `docker exec -it <postgres container name> bash` then `psql -U postgres` and the prompt will change
- run `\l` to see the list of databases
- run `\c <database_name>` to connect to the database
- install Anaconda 
- install Jupiter Notebook
- install conda
- in another terminal run conda virtual environment, `conda activate <environment-name>`
- then run Jupiter Notebook in the conda env, run 
- return to the terminal with the conda environment activated (it with have this `(base)`) and then run `jupyter notebook`
- when it opens in the browser run `import psycopg2`
- MUST create additional user and alter role as `SUPERUSER`  
- to connect to database in Jupyter notebook, run `conn = psycopg2.connect(host="0.0.0.0", port=5432, database="projectpages", user="postgres", password="password")`

[alter role to superuser - postgres](https://chartio.com/resources/tutorials/how-to-change-a-user-to-superuser-in-postgresql/)


