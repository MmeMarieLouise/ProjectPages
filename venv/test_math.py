import pytest
# import file that will be tested
import math_func

def test_add():
    assert math_func.add(7,3) == 10
    assert math_func.add(7) == 9
    assert math_func.add(5) == 7

def test_product():
    assert math_func.multiply (5,5) == 25
    assert math_func.multiply (5) == 10
    assert math_func.multiply (7) == 14
