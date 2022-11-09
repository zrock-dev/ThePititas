def createTwoRowArrays(oneRowMatrix):
    if len(oneRowMatrix) % 2 == 0:
        firstRowMatrix = []
        secondRowMatrix = []
        for index in range(0, len(oneRowMatrix), 2):
            firstRowMatrix.append(oneRowMatrix[index])
            secondRowMatrix.append(oneRowMatrix[index + 1])
        return [firstRowMatrix, secondRowMatrix]

rowMatrix = [11, 20, 8, 6, 6, 24, 26, 6, 7, 26]
# Result expected [[11, 8, 6, 26, 7], [20, 6, 24, 6, 26]]
print(len(createTwoRowArrays(rowMatrix)))