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

    // 【疑問】@objc dynamic var が使えない理由は？
//    var fruits = [
//        Fruit(checkMark: false, name: "りんご"),
//        Fruit(checkMark: true, name: "みかん"),
//        Fruit(checkMark: false, name: "バナナ"),
//        Fruit(checkMark: true, name: "パイナップル"),
//    ]

// 【MVC順番3】fruitsの計算処理する
}
