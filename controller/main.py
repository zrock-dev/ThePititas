def multiplication_vectors(first_vector, second_vector):
    result = 0
    for index in range(len(first_vector)):
        result += first_vector[index] * second_vector[index]
    return result


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


def multiplication_matrix(matrix_one, matrix_two):
    matrix_result = []
    if len(matrix_one[0]) == len(matrix_two):
        for row in matrix_one:
            column_result = []
            for column in range(len(matrix_two[0])):
                column_matrix_two = [matrix_two[0][column], matrix_two[1][column]]
                column_result.append(multiplication_vectors(row, column_matrix_two))
            matrix_result.append(column_result)
    return matrix_result


"""
def multiplication_matrixx(matrix_one, matrix_two):
    matrix_result = []
    if(len(matrix_one[0]) == len(matrix_two)):
        multiplcation_row_matrix(matrix_one, matrix_two, matrix_result)
    return matrix_result

def multiplcation_row_matrix(matrix_one, matrix_two, matrix_result):
    for row in matrix_one:
        column_result = []
        multiplication_matrixTwo(column_result, matrix_two, row)
        matrix_result.append(column_result)


def multiplication_matrixTwo(column_result, matrix_two, row):
    for column in range(len(matrix_two[0])):
        column_matrix_two = [matrix_two[0][column], matrix_two[1][column]]
        column_result.append(multiplication_vectors(row, column_matrix_two))"""


def reverseKey(matriz):
    determinant = (matriz[0][0] * matriz[1][1] - matriz[1][0] * matriz[0][1])
    newMatrix = [[matriz[1][1], - matriz[0][1]], [- matriz[1][0], matriz[0][0]]]
    indexRow = 0
    while indexRow < len(newMatrix):
        indexColumn = 0
        while indexColumn < len(newMatrix[indexRow]):
            newMatrix[-indexRow][-indexColumn] = 1 / determinant * newMatrix[indexRow][indexColumn]
            indexColumn = indexColumn + 1
        indexRow = indexRow + 1
    return newMatrix


def module_matrix(vector, numberModule):
    for row in range(len(vector)):
        for column in range(len(vector[row])):
            result = vector[row][column] % numberModule
            vector[row][column] = result
    return vector


def encrypt(key, img_matrix):
    newArrayImage = []
    for row in img_matrix:
        twoRowArray = createTwoRowArrays(row)
        newArray = multiplication_matrix(key, twoRowArray)
        newArray = module_matrix(newArray, module)
        newArrayImage.append(inverseTwoRowArrays(newArray))
    return newArrayImage


def decrypt(matrix_key, encrypter_matrix):
    matrix_key = reverseKey(matrix_key)
    matrix_key = module_matrix(matrix_key, module)
    newArrayImage = []
    for row in encrypter_matrix:
        twoRowArray = createTwoRowArrays(row)
        newArray = multiplication_matrix(matrix_key, twoRowArray)
        newArray = module_matrix(newArray, module)
        newArrayImage.append(inverseTwoRowArrays(newArray))
    return newArrayImage


def multiplication_matrixByPixel(matrix_one, matrix_two):
    matrix_result = []
    if len(matrix_one[0]) == len(matrix_two):
        for row in matrix_one:
            matrix_result.append(multiplication_vectors(row, matrix_two))
    return matrix_result


def module_matrixByPixel(vector, module):
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
            newPosition = multiplication_matrixByPixel(key, [rowIndex, columnIndex])
            newPosition = module_matrixByPixel(newPosition, 256)
            newMatrix[newPosition[1]][newPosition[0]] = (b, g, r)
    return newMatrix


def decryptByPixel(key, matrixImage):
    newMatrix = matrixImage.copy()
    # key = reverseKey(key)
    key = module_matrix(key, 256)
    for rowIndex in range(len(matrixImage)):
        for columnIndex in range(len(matrixImage[0])):
            (b, g, r) = matrixImage[columnIndex, rowIndex]
            # print((b, g, r))
            newPosition = multiplication_matrixByPixel(key, [rowIndex, columnIndex])
            newPosition = module_matrixByPixel(newPosition, 256)
            newMatrix[newPosition[1]][newPosition[0]] = (b, g, r)
    return newMatrix


module = 10 ** 10
key = [[21, 35], [18, 79]]
