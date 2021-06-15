//
//  CustomTableViewCell.swift
//  subject_13
//
//  Created by 長谷川孝太 on 2021/06/11.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    static let identifier = "CustomTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
    }

    func configure(fruit: Fruit) {
        customLabel.text = fruit.name
        customImageView.image = fruit.checkMark ? UIImage(systemName: "checkmark") : nil
    }

    @IBOutlet private var customLabel: UILabel!
    @IBOutlet private var customImageView: UIImageView!
}
