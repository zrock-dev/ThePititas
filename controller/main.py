def createTwoRowArrays(oneRowMatrix):
    if len(oneRowMatrix) % 2 == 0:
        firstRowMatrix = []
        secondRowMatrix = []
        for index in range(0, len(oneRowMatrix), 2):
            firstRowMatrix.append(oneRowMatrix[index])
            secondRowMatrix.append(oneRowMatrix[index + 1])
        return [firstRowMatrix, secondRowMatrix]


def inverseTwoRowArrays(matrixTwoRows):
    array_simplify = []
    for index_array in zip(matrixTwoRows[0], matrixTwoRows[1]):
        array_simplify.append(index_array[0])
        array_simplify.append(index_array[1])
    return array_simplify


def decrypt(matrix_key, encrypter_matrix):
    matrix_key = inversal_key(matrix_key)
    # matrix_key = module_matrix(matrix_key, module)
    newArrayImage = encrypter_matrix.copy()
    for row in range(len(encrypter_matrix)):
        twoRowArray = createTwoRowArrays(encrypter_matrix[row])
        newArray = multiplication_matrix(matrix_key, twoRowArray)
        newArray = module_matrix(newArray, module)
        newArrayImage[row] = inverseTwoRowArrays(newArray)
    return newArrayImage


def multiply_vectors(first_vector, second_vector):
    result = 0
    for index in range(len(first_vector)):
        result += first_vector[index] * second_vector[index]
    return result


def multiplication_matrix(matrix_one, matrix_two):
    matrix_result = []
    if len(matrix_one[0]) == len(matrix_two):
        for row in matrix_one:
            column_result = []
            for column in range(len(matrix_two[0])):
                column_matrix_two = [matrix_two[0][column], matrix_two[1][column]]
                column_result.append(multiply_vectors(row, column_matrix_two))
            matrix_result.append(column_result)
    return matrix_result


def inversal_key(matriz):
    return [[67, 249], [150, 209]]


def module_matrix(vector, number_module):
    for row in range(len(vector)):
        for column in range(len(vector[row])):
            result = vector[row][column] % number_module
            vector[row][column] = result
    return vector


def encrypt(key, img_matrix):
    new_array_image = img_matrix.copy()
    for row in range(len(img_matrix)):
        twoRowArray = createTwoRowArrays(img_matrix[row])
        newArray = multiplication_matrix(key, twoRowArray)
        newArray = module_matrix(newArray, module)
        new_array_image[row] = inverseTwoRowArrays(newArray)
    return new_array_image


def multiply_matrix_by_pixel(matrix_one, matrix_two):
    matrix_result = []
    if len(matrix_one[0]) == len(matrix_two):
        for row in matrix_one:
            matrix_result.append(multiply_vectors(row, matrix_two))
    return matrix_result


def module_matrix_by_pixel(vector, module):
    newVector = []
    if module != 0:
        for element in vector:
            newVector.append(element % module)
        return newVector
    return vector


def encryptByPixel(key, matrixImage):
    newMatrix = matrixImage.copy()
    for rowIndex in range(len(matrixImage)):
        for columnIndex in range(len(matrixImage[0])):
            (b, g, r) = matrixImage[columnIndex, rowIndex]
            newPosition = multiply_matrix_by_pixel(key, [rowIndex, columnIndex])
            newPosition = module_matrix_by_pixel(newPosition, 256)
            newMatrix[newPosition[1]][newPosition[0]] = (b, g, r)
    return newMatrix


def decryptByPixel(key, matrix_Image):
    new_matrix = matrix_Image.copy()
    # key = reverseKey(key)
    key = inversal_key(key)
    for rowIndex in range(len(matrix_Image)):
        for columnIndex in range(len(matrix_Image[0])):
            (b, g, r) = matrix_Image[columnIndex, rowIndex]
            # print((b, g, r))
            new_position = multiply_matrix_by_pixel(key, [rowIndex, columnIndex])
            new_position = module_matrix_by_pixel(new_position, 256)
            new_matrix[new_position[1]][new_position[0]] = (b, g, r)
    return new_matrix


module = 256
key = [[21, 35], [18, 79]]
