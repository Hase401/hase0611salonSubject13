//
//  FruitsArray.swift
//  subject_13
//
//  Created by 長谷川孝太 on 2021/06/13.
//

import Foundation

class FruitsArray {
    // 【疑問】@objc dynamic var が使えない理由は？
    let fruits = [
        Fruit(checkMark: false, name: "りんご"),
        Fruit(checkMark: true, name: "みかん"),
        Fruit(checkMark: false, name: "バナナ"),
        Fruit(checkMark: true, name: "パイナップル")
    ]
}
