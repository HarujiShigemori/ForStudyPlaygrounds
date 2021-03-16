
import Foundation

let text = """
    おはよう
    "こんにちは"
    ""こんばんは\"""\
    おやすみ
    """// \を行の最後に書くと改行しない
print(text)

// #"中のクォーテーションは文字列として扱う"#
let text2 = #""こんにちは""#
print("\n" + text2)
