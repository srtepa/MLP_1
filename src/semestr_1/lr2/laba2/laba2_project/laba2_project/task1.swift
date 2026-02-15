import Foundation


func addFractions(_ n: Int, _ m: Int, _ q: Int, _ p:Int) -> String {
    var x: Int = 0
    var y: Int = 0
    
    if m == p {
            x = n + q
            y = m
        } else {
            y = m * p
            let n1 = n * p
            let q1 = q * m
            x = n1 + q1
        }
    
    let NOD = algEvclid(x, y)
    
    x/=NOD
    y/=NOD
    
    if x==1 && y==1{
        return "1"
    }
    
    return "\(x)/\(y)"
}

func algEvclid(_ a: Int, _ b: Int) -> Int {
    var num1 = abs(a)
    var num2 = abs(b)
    
    while num2 != 0 {
        let remainder = num1 % num2
        num1 = num2
        num2 = remainder
    }
    
    return num1
}

