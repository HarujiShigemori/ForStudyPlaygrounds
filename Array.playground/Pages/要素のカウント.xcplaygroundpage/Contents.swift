
import Foundation

//NSCountedSetを使用して配列の中の要素がいくつずつあるか確認
func count(array:Array<Int>,min:Int,max:Int){
    
    let counter = NSCountedSet(array: array)
    let counts = ([Int])(min...max).map { ($0, counter.count(for: $0)) }
    
    counts.forEach { print("\($0.0):\($0.1)回") }
    //カウントされた数が多い順に数字を並べる
    print(counts.sorted(by: { l, r in l.1 > r.1 }).map({ $0.0 }))
}

let number2 = [7,5,4,8,2,9,0,9,4,7,5,0,2]
count(array: number2, min: 0, max: 9)
