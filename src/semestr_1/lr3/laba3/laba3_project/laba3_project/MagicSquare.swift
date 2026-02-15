//
//  MagicSquare.swift
//  laba3_project
//
//  Created by Степан Конон on 11.11.25.
//


public class MagicSquare{
    private let matrix: [[Int]]//приватные поля класса
    private let size: Int
    
    init(_ matrix: [[Int]]){//конструктор класса
        self.matrix = matrix
        self.size = matrix.count
    }
    
    private func isSquare() -> Bool{//проверка: является ли матрица квадратной
        for row in matrix{
            if row.count != size{
                return false
            }
        }
        
        return true
    }
    
    public func isMagicSquare() -> Bool{
        guard !matrix.isEmpty && isSquare() else {
            return false
        }
        
        let magicConstant = size * (size * size + 1) / 2
        
        guard checkRowsSum(magicConstant) &&
                checkColsSum(magicConstant) &&
                checkDiagSum(magicConstant) else{
                    return false
        }

        guard containsAllNumbersOnce() else {
            return false
        }
        
        return true
    }
    
    private func checkRowsSum(_ const: Int) -> Bool{
        for row in matrix{
            if row.reduce(0, +) != const{
                return false
            }
        }
        
        return true
    }
    
    private func checkColsSum(_ const: Int) -> Bool{
        for cols in 0..<size{
            var sum: Int = 0
            for rows in 0..<size{
                sum += matrix[rows][cols]
            }
            
            if sum != const{
                return false
            }
        }
        
        return true
    }
    
    private func checkDiagSum(_ const: Int) -> Bool{
        var mainDiagSum: Int = 0
        var antiDiagSum: Int = 0
        
        for i in 0..<size{
            mainDiagSum += matrix[i][i]
            antiDiagSum += matrix[i][size-1-i]
        }
        
        return mainDiagSum==const&&antiDiagSum==const
    }
    
    private func containsAllNumbersOnce() -> Bool {
            let expectedNumbers = Set(1...(size * size))
            let actualNumbers = Set(matrix.flatMap{$0})
            
            return expectedNumbers == actualNumbers
        }
}
