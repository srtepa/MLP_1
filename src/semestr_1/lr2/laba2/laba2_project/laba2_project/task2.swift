import Foundation


func numOfOdd(_ array: [Int]) -> Int {
    return array.filter { $0 % 2 != 0 }.count
}

func numOfWords(_ str: String) -> Int {
    return str.split(separator: " ").filter { !$0.isEmpty }.count
}
