"""Module with a class."""

from .subpackage1.module1 import sum, subtract

class testClass():

    """Docstring for testClass. """

    def __init__(self, i: int):
        """TODO: to be defined. """
        self.i = i

    def sum(self, i: int) -> int:
        """TODO: short description.

        TODO: long description.

        Parameters
        ----------
        i: value to be summed.

        Returns
        -------
        Sum of self.i with the provided argument.

        """

        return sum(self.i, i)

    def subtract(self, i: int) -> int:
        """TODO: short description.

        TODO: long description.

        Parameters
        ----------
        i: value to be subtracted.

        Returns
        -------
        Subtract i from self.i.

        """

        return subtract(self.i, i)

