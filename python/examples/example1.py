"""Example using mypackage"""

from mypackage.subpackage1.module1 import sum, subtract, multiply_matrix
from mypackage.module2 import testClass
import numpy as np

value1 = 2
value2 = 1
matrix1 = np.asarray([[0.1, 2, 400], [10, 81.5, 15], [0, 0, 1]],
                     dtype=np.float16)
matrix2 = np.asarray([[1, 1, 1], [9, 0.2, 0.55], [10, 0.1287, 2]],
                     dtype=np.float16)
instance = testClass(value1)

print("Functions from module 1:\n")
print("{} + {} = {}".format(value1, value2, sum(value1, value2)))
print("{} - {} = {}".format(value1, value2, subtract(value1, value2)))
print("\nMatrix multiplication\n")
print("{} \n * \n {} = \n".format(matrix1, matrix2))
print(multiply_matrix(matrix1, matrix2))

print("\nFunctions from module 2:\n")
print("{} + {} = {}".format(value1, value2, instance.sum(value2)))
print("{} - {} = {}".format(value1, value2, instance.subtract(value2)))

