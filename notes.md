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

#### postgres db

- use postgres image to run docker container

- must add environment variables on that image `-e`

NOTE: must spin up two containers 
1. postgress db container
1. pgAdmin container

- to run the containers, first check container name - run `docker ps -a`
- then run `docker start my_container_name`

- to check logs run, `docker logs -f my_container_name`

- to access dashboard, in browser enter *http://localhost:ip_address*

- to get in via bash, run `docker exec -it ProjectPages bash`