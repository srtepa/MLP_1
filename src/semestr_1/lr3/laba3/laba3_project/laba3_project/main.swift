
let goodMatrix = [
    [8, 1, 6],
    [3, 5, 7],
    [4, 9, 2]
]

let check = MagicSquare(goodMatrix)

goodMatrix.forEach { row in
    print(row)
}

if check.isMagicSquare() {
    print("Это магический квадрат!")
} else {
    print("Это не магический квадрат.")
}

let notMagicSquare = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

let check2 = MagicSquare(notMagicSquare)

notMagicSquare.forEach { row in
    print(row)
}

if check2.isMagicSquare() {
    print("Это магический квадрат!")
} else {
    print("Это не магический квадрат.")
}
