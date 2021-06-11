//
//  ViewController.swift
//  subject_13
//
//  Created by 長谷川孝太 on 2021/06/09.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    private let keyCheckMark = "checkMark"
    private let keyName = "name"
    //　【メモ】private var fruits: [Dictionary<String, Any>] = []
    private var fruits: [[String: Any]] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.fruits = [
            [keyCheckMark: false, keyName: "りんご"],
            [keyCheckMark: true, keyName: "みかん"],
            [keyCheckMark: false, keyName: "バナナ"],
            [keyCheckMark: true, keyName: "パイナップル"]
        ]
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
    }
}

extension ViewController: UITableViewDelegate {
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.fruits.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 【疑問】このメソッドで"guard let -- else { return }"はできないのでダウンキャストas!を使うしか他に方法はないのか？
        let customCell = tableView.dequeueReusableCell(
                            // swiftlint:disable:next force_cast
                            withIdentifier: CustomTableViewCell.identifier, for: indexPath) as! CustomTableViewCell
        customCell.configure(with: (fruits[indexPath.row][keyName] as? String) ?? "",
                             imageName: "checkmark",
                             isCheckMark: (fruits[indexPath.row][keyCheckMark] as? Bool) ?? false)
        return customCell
    }
}
