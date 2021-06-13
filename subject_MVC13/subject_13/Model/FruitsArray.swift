//
//  FruitsArray.swift
//  subject_13
//
//  Created by 長谷川孝太 on 2021/06/13.
//

import Foundation

class FruitsArray: NSObject {
    static let keyCheckMark = "checkMark"
    static let keyName = "name"

// 【MVC順番4】fruitsの変更を通知する
    @objc dynamic var fruits: [[String: Any]] = [
        [keyCheckMark: false, keyName: "りんご"],
        [keyCheckMark: true, keyName: "みかん"],
        [keyCheckMark: false, keyName: "バナナ"],
        [keyCheckMark: true, keyName: "パイナップル"]
]

// 【MVC順番3】fruitsの計算処理する
}
