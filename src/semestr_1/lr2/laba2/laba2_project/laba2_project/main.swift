import Foundation


print("Task 1")
print(addFractions(1, 2, 1, 2))
print(addFractions(1, 3, 1, 2))
print(addFractions(1, 4, 1, 4))

print("\nTask 2")

let funOdd: ([Int]) -> Int = numOfOdd(_:)
print("Число нечетных чисел в массиве: \(funOdd([1, 2, 3, 4, 5, 6, 7]))")

let funStr: (String) -> Int = numOfWords(_:)
print("Число слов в строке: \(funStr("Привет мир как дела"))")
print("Число слов в строке: \(funStr("     Много     Пробелов   "))")

print("\nПример использования перечисления")
print(operateFractions(1, 2, 1, 3, op: .addition))
print(operateFractions(1, 2, 1, 3, op: .subtraction))
