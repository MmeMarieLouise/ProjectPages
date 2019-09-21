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
1. start postgres instance, run `docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres:version`
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
1. to connect to the database run, `\c <db_name>`
- you will see :

```
You are now connected to database "<db_name>" as user "postgres".

```

#### docker tips

- for help, run `docker --help`
- for list of running containers run, `docker ps`
- to check list of all containers including exited run, `docker ps -a`
- to check logs run, `docker logs -f my_container_name`
- to run container,  `docker start my_container_name`
