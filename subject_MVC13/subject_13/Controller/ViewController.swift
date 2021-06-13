//
//  ViewController.swift
//  subject_13
//
//  Created by 長谷川孝太 on 2021/06/09.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!

    @objc private let fruitsArray = FruitsArray()
    // インスタンスを保持
    private var observations = Set<NSKeyValueObservation>()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()

        // 【MVC順番５】modelのFruitsArrayのfruitsの変更を検知する
//            observations.insert(
//                observe(\.fruitsArray.fruits, options: [.old, .new], changeHandler: { [weak self] _, change in
//                    guard let fruits = change.newValue else { return }
//                })
//            )
        // 【MVC順番6】viewに処理を依頼する
    }
}

extension ViewController: UITableViewDelegate {
    // 【MVC順番１】viewでタップを受ける
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 【MVC順番２】FruitsArrayに処理を依頼する
    }
}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fruitsArray.fruits.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(
                            // swiftlint:disable:next force_cast
                            withIdentifier: CustomTableViewCell.identifier, for: indexPath) as! CustomTableViewCell
        customCell.configure(
            with: (fruitsArray.fruits[indexPath.row][FruitsArray.keyName] as? String) ?? "",
            imageName: "checkmark",
            isCheckMark: (fruitsArray.fruits[indexPath.row][FruitsArray.keyCheckMark] as? Bool) ?? false
        )
        return customCell
    }

    // 【MVC順番７】controllerからViewを変更しろという通知が来たら、描写処理する
}
