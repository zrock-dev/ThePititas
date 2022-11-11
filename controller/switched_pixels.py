class PixelSwitch:

    def multiplication_vectors(first_vector, second_vector):
        result = 0
        for index in range(len(first_vector)):
            result += first_vector[index] * second_vector[index]
        return result

    def multiplication_matrixByPixel(matrix_one, matrix_two):
        matrix_result = []
        if len(matrix_one[0]) == len(matrix_two):
            for row in matrix_one:
                matrix_result.append(multiplication_vectors(row, matrix_two))
        return matrix_result

    def module_matrix(vector, numberModule):
        for row in range(len(vector)):
            for column in range(len(vector[row])):
                result = vector[row][column] % numberModule
                vector[row][column] = result
        return vector

    def module_matrixByPixel(vector, module):
        newVector = []
        if module != 0:
            for element in vector:
                newVector.append(element % module)
            return newVector
        return vector

    def encrypt(key, matrixImage):
        newMatrix = matrixImage.copy()
        for rowIndex in range(len(matrixImage)):
            for columnIndex in range(len(matrixImage[0])):
                (b, g, r) = matrixImage[columnIndex, rowIndex]
                newPosition = multiplication_matrixByPixel(key, [rowIndex, columnIndex])
                newPosition = module_matrixByPixel(newPosition, 256)
                newMatrix[newPosition[1]][newPosition[0]] = (b, g, r)
        return newMatrix

    def decrypt(key, matrixImage):
        newMatrix = matrixImage.copy()
        # key = reverseKey(key)
        key = module_matrix(key, 256)
        for rowIndex in range(len(matrixImage)):
            for columnIndex in range(len(matrixImage[0])):
                (b, g, r) = matrixImage[columnIndex, rowIndex]
                print((b, g, r))
                newPosition = multiplication_matrixByPixel(key, [rowIndex, columnIndex])
                newPosition = module_matrixByPixel(newPosition, 256)
                newMatrix[newPosition[1]][newPosition[0]] = (b, g, r)
        return newMatrix
