
import Foundation

let start = 100000
let monthly = 50000
let years = 10
let annualYield = 3

let totalMonth = years * 12

let convert = Double(annualYield) / 100 + 1
let month:Double = 1 / 12
let monthlyInterest = pow(Double(convert), month)

var resultMoney:Double = Double(start)
var result = [Int]()

for month in 1...totalMonth {
    
    let total = Double(monthly) * pow(monthlyInterest, Double(month))
    resultMoney += total
    
    if month % 12 == 0 {
        
        let startRes = Double(start) * pow(convert, Double(month / 12)) - Double(start) * pow(convert, Double(month / 12 - 1))
        
        resultMoney += startRes
        
        result.append(Int(resultMoney))
        
    }
}

let interest = result.last! - (start + monthly * totalMonth)
print(interest)

print(result)


