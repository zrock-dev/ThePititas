import cv2
import numpy
def multiplication_vectors(first_vector, second_vector):
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
                column_result.append(multiplication_vectors(row, column_matrix_two))
            matrix_result.append(column_result)
    return matrix_result

def inversaLlave(matriz):
    determinante = (matriz[0][0] * matriz[1][1] - matriz[1][0] * matriz[0][1])
    nuevaMatriz = [[matriz[1][1],- matriz[0][1]],[ - matriz[1][0],matriz[0][0]]]
    indiceFila = 0
    while indiceFila < len(nuevaMatriz):
        indiceColumna = 0
        while indiceColumna < len(nuevaMatriz[indiceFila]):
            nuevaMatriz[-indiceFila][-indiceColumna] = 1/determinante * nuevaMatriz[indiceFila][indiceColumna]
            indiceColumna = indiceColumna + 1
        indiceFila = indiceFila + 1
    return nuevaMatriz

def module_matrix(vector, module):
    for row in range(len(vector)):
        for column in range(len(vector[row])):
            vector[row][column] %= module
    return vector

def method_hill(matrix_key, img_matrix):
    new_array_color = []
    for rows in range(0, 256):
        rows_new_array_color = []
        for columns in range(0, 256, 2):
            matrix1 = img_matrix[rows, columns]
            lenMatrix1 = len(matrix1)
            matrix2 = img_matrix[rows, columns + 1]
            lenMatrix2 = len(matrix2)
            vector = multiplication_matrix(matrix_key, [matrix1, matrix2])
            vector = module_matrix(vector, 256)
            rows_new_array_color.append(vector[0])
            rows_new_array_color.append(vector[1])

        new_array_color.append(rows_new_array_color)  # matrix = multiplication_matrix([[1, 2, 3], [1, 2, 3]], [[2, 2], [4, 4]])
    return new_array_color


def decrypt(matrix_key, encrypter_matrix):
    # matrix_key = inversaLlave(matrix_key)
    matrix_key = module_matrix(matrix_key, 256)
    new_array_color = []
    for rows in range(0, 256):
        rows_new_array_color = []
        for columns in range(0, 256, 2):
            vector = multiplication_matrix(matrix_key, [encrypter_matrix[rows, columns], encrypter_matrix[rows, columns + 1]])
            vector = module_matrix(vector, 256)
            rows_new_array_color.append(vector[0])
            rows_new_array_color.append(vector[1])

        new_array_color.append(rows_new_array_color)  # matrix = multiplication_matrix([[1, 2, 3], [1, 2, 3]], [[2, 2], [4, 4]])
    return new_array_color

# def encrypt(key, img_matrix):
#     matrix_encrypt = multiplication_matrix(key, img_matrix)
#     matrix_encrypt = module_matrix(matrix_encrypt, 27)
#     return matrix_encrypt
#
# def decrypt(matrix_key, encrypter_matrix):
#     matrix_key = module_matrix(matrix_key, 27)
#     return module_matrix(multiplication_matrix(matrix_key, encrypter_matrix), 27)
#
# parent_matrix = []
# key = [[6, 5], [5, 5]]
# inverted_key = [[1, -1], [-1, 6/5]]
# parent_matrix = [[12, 4, 20, 20, 18], [0, 26, 18, 11, 26], [19, 12, 2, 14, 26]]
# key = [[35, 53, 12], [12, 21, 5], [2, 4, 1]]
# inverted_key = [[1, -5, 13], [-2, 11, -31], [6, -34, 99]]

img = cv2.imread('image.jpg')
key = [[6, 5], [5, 5]]
new_array_color = method_hill(key, img)
arr = numpy.array(new_array_color, dtype=numpy.int8)

# invertido = [[1, -1], [-1, 6/5]]
# decrypt_array = decrypt(new_array_color, invertido)
# arr2 = numpy.array(decrypt_array, dtype=numpy.int8)
cv2.imshow('WOLF', img)
cv2.waitKey()
cv2.destroyAllWindows()