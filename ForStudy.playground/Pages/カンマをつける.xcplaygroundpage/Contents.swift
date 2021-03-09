//: [Previous](@previous)

import Foundation

func addComma(numStr:String) -> String {
    
    if numStr != "" {
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.decimal
        formatter.groupingSeparator = ","
        formatter.groupingSize = 3
        
        //textFieldなどで値を入れるたび更新する場合はカンマを消してから
        let deletedCommaNum = numStr.replacingOccurrences(of: ",", with: "")
        
        let numInt = Int(deletedCommaNum)
        let str = formatter.string(from: NSNumber(value: numInt!))!
        return str
    }
    return ""
}
print(addComma(numStr: ""), terminator:"")
print(addComma(numStr: "00000"), terminator:"")
print(addComma(numStr: "1234567890"), terminator:"")
print(addComma(numStr: "1,000,000"), terminator:"")

