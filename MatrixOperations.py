# This class contains all the linear algebra operations needed to encrypt and decrypt
class Operations:
    # This method does the multiplication of the matrix by a vector
    # The multiplication can be done if the number of rows in the matrix
    # is equal to the number of columns in the vector.
    # returns the same array if the condition is not met.
    def matrix_multiplication_by_vector(self, matrix, vector):
        matrix_result = []
        if len(vector) == len(matrix):
            for matrix_row in matrix:
                result_multiplication = 0
                for index_vectors in zip(matrix_row, vector):
                    result_multiplication += index_vectors[0] * index_vectors[1]
                matrix_result.append(result_multiplication)
            return matrix_result
        else:
            print("It is not possible make the multiplication")
            return matrix

    def createTwoRowArrays(oneRowMatrix):
        if len(oneRowMatrix) % 2 == 0:
            firstRowMatrix = []
            secondRowMatrix = []
            for index in range(0, len(oneRowMatrix), 2):
                firstRowMatrix.append(oneRowMatrix[index])
                secondRowMatrix.append(oneRowMatrix[index + 1])
            return [firstRowMatrix, secondRowMatrix]