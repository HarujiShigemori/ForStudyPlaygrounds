

import Foundation
var array = [0,1,2,3,4]
//もし配列内に2があればそのindex番号を取得
if let existNum = array.firstIndex(of: 2) {
    array[existNum] = 0
}
//逆向きの4~0
for _ in (0..<array.count).reversed(){ }

//両端のスペースを消して()をつける
let stirng = " abc "
let changeString = "(" + stirng.trimmingCharacters(in: .whitespaces) + ")"


//指定したfor文の処理を終える
label: for x in [1, 2, 3] {
    print("１つ目のfor文: \(x)")
    
    if x < 5 {
        for y in [1, 2, 3] {
            print("２つ目のfor文: \(y)")
            break label
        }
    }
    
}


