import unittest

from hill_method import HillMethod


class TestHillMethod(unittest.TestCase):
    hill_method = HillMethod()

    def test_matrix_multiplication_by_vector(self):
        self.assertAlmostEqual(self.hill_method.matrix_multiplication_by_vector([[2, 2], [2, 2]], [2, 2]), [8, 8])
        self.assertAlmostEqual(self.hill_method.matrix_multiplication_by_vector([[12, 12], [12, 12]], [5, 5]),
                               [120, 120])
        self.assertAlmostEqual(self.hill_method.matrix_multiplication_by_vector([[15, 37], [19, 11]], [7, 12]),
                               [549, 265])
        self.assertAlmostEqual(self.hill_method.matrix_multiplication_by_vector([[89, 12], [18, 17]], [4, 2]),
                               [380, 106])
