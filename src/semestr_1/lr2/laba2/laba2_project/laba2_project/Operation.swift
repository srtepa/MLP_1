import Foundation

enum Operation {
    case addition
    case subtraction
    case multiplication
    case division
}

func operateFractions(_ n: Int, _ m: Int, _ q: Int, _ p: Int, op: Operation) -> String {
    switch op {
    case .addition:
        return addFractions(n, m, q, p)
    case .subtraction:
        return addFractions(n, m, -q, p)
    case .multiplication:
        return addFractions(n * q, m * p, 0, 1)
    case .division:
        return addFractions(n * p, m * q, 0, 1)
    }
}
