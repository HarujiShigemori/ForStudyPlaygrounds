//: [Previous](@previous)

import Foundation




let array2 = [5,4,3,2,1]
let reducedArray2 = array2.reduce(1,*)
print(reducedArray2)



let array = [[3],[2,6],[4,5,1]]

let flatArray = array.flatMap{ value in value }
//[3, 2, 6, 4, 5, 1]

let joinedArray = Array(array.joined())
print(joinedArray)
//[3, 2, 6, 4, 5, 1]



let array3 = [[50,66,78],[88,90,95],[76,55,77]]

//二次元配列から一次元配列
let flatArray2 = array3.flatMap{ value in value}

//reduce(初期値,どの四則演算か)
let average = flatArray2.reduce(0, +) / flatArray2.count
//75
