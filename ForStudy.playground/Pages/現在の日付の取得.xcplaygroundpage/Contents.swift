import Foundation

func getTodayDate(slash:Bool,timeStyle:Bool) -> String {
    let f = DateFormatter()
    
//    年〜日をつける
    f.dateStyle = .long
//    日本語
    f.locale = Locale(identifier: "ja_JP")
//    スラッシュをつけるか？時刻表示するのか？
    if slash == true {
        if timeStyle == true {
            f.timeStyle = .medium
            f.dateFormat = "yyyy/MM/dd hh:mm:ss"
        }else{
            f.timeStyle = .none
            f.dateFormat = "yyyy/MM/dd"
        }
    }else{
        if timeStyle == true {
            f.timeStyle = .medium
            f.dateFormat = "yyyy年MM月dd日 hh時mm分ss秒"
        }else{
            f.timeStyle = .none
        }
    }
//    現在時刻を入れて作ったフォーマットでreturnする
    let now = Date()
    return f.string(from: now)
}

let date1 = getTodayDate(slash: true, timeStyle: true)
let date2 = getTodayDate(slash: true, timeStyle: false)
let date3 = getTodayDate(slash: false, timeStyle: true)
let date4 = getTodayDate(slash: false, timeStyle: false)
