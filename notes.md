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