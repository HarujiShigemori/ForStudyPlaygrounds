import UIKit

//int型　.５の倍数
let array:[Int] = ([Int])(1...10).map{return $0 * 5}
print(array)

//string型.マイナス-10~-1.逆向き + string型.0~10
let array2:[String] = [Int](1...10).map{return String($0 * -1)}.reversed() + [Int](0...10).map{return String($0)}
print(array2)
