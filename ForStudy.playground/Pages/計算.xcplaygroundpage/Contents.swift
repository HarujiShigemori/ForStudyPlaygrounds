
import UIKit
import Foundation

var x:Int = 5
var y:String = "3"
var z:Double = 2

let total = pow(Double(x), z)
let total2 = pow(Double(y)!, z)


let num = 4.5
let numRound = round(num)
// 5（四捨五入）
let numFloor = floor(num)
// 4（切り捨て）
let numCeil  = ceil(num)
// 5（切り上げ）
let num314 = 3.1415
let numRound2 = round(num314*10)/10
// 3.1（小数第2位で四捨五入）
let numFloor2 = floor(num314*100)/100
// 3.14（小数第3位で切り捨て）
let numCeil2 = ceil(num314*1000)/1000
// 3.142（小数第4位で切り上げ）
