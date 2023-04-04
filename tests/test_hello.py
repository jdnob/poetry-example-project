from poetry_example_project.hello import add, mul, sub

def test_add():
    assert add(1, 2) == 3

def test_mul():
    assert mul(1, 2) == 2

def test_sub():
    assert sub(1, 2) == -1