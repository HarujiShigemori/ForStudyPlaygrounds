
import Foundation

//int型を桁ごとに分けて配列にする
extension BinaryInteger {
    var digits: [Int] {
        String(describing: self).compactMap { Int(String($0)) }
    }
}
let number: Int = 123456
print("digits: ",number.digits, "\n")
