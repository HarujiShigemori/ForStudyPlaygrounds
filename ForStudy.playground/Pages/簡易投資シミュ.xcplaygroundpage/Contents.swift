
import Foundation
//調べたい年数からトータル月数を出す
let years = 20
let totalMonth = years * 12
//月に積み立てるお金は？（万円）
let money = 15
//年利リターン何％？
var nenri:Double = 3.0
//月利を求める
let henkan = nenri / 100 + 1
let ruijou:Double = 1 / 12
let geturi = pow(henkan, ruijou)

var resultMoney:Double = 0
var yearNumber = 0

print("入力した内容\n毎月積立額\(money)万円、積立期間\(years)年、リターン\(nenri)%の場合\n")
for month in 1...totalMonth {
    
    let total = Double(money) * pow(geturi, Double(month))
    resultMoney += total
    
    if month % 12 == 0 {
        yearNumber += 1
        if yearNumber < 10 {
            print(" \(yearNumber)年後　:　積立金額　\(Int(resultMoney))万円　:　利子　\(Int(resultMoney) - (money * month))万円\n")
        }else{
            print("\(yearNumber)年後　:　積立金額　\(Int(resultMoney))万円　:　利子　\(Int(resultMoney) - (money * month))万円\n")
        }
        
    }
}
print("\n最終積立金額は\(Int(resultMoney))万円です！")

