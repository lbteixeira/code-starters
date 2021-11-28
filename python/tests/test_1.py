from mypackage.subpackage1 import module1
from mypackage.module2 import testClass
import numpy as np


def test_module1_sum():
    """TODO: short description."""

    assert module1.sum(1, 1) == 2

def test_module1_subtract():
    """TODO: short description."""

    assert module1.subtract(1, 1) == 0

def test_multiply_matrix():
    """TODO: short description."""

    m1 = np.asarray([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    m2 = np.eye(3)

    assert (module1.multiply_matrix(m1, m2) == m1).all()

def test_class():
    """TODO: short description."""

    instance = testClass(1)

    assert(instance.sum(1) == 2)
    assert(instance.subtract(1) == 0)

