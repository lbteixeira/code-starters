"""Module with functions."""

import numpy as np
from numpy.typing import NDArray

def sum(i: int, j: int) -> int:
    """Sum two integers.

    Long description of method.

    Parameters
    ----------
    i: First integer
    j: Second integer

    Returns
    -------
    Sum of the two integers.

    """

    return i + j

def subtract(i: int, j:int) -> int:
    """Subtract two integers.

    TODO: long description.

    Parameters
    ----------
    i: First integer.
    j: Second integer.

    Returns
    -------
    Subtraction of two integers.

    """

    return i - j

def multiply_matrix(matrix_a: NDArray, matrix_b: NDArray) -> NDArray:
    """Multiply two Numpy matrices.

    TODO: long description.

    Parameters
    ----------
    matrix_a: matrix 1.
    matrix_b: matrix 2.

    Returns
    -------
    Matrix multiplication.

    """

    return np.matmul(matrix_a, matrix_b)

