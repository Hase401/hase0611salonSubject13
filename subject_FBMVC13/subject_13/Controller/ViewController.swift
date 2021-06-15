//
//  ViewController.swift
//  subject_13
//
//  Created by 長谷川孝太 on 2021/06/09.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!

    private let fruitsArray = FruitsArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
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
        customCell.configure(fruit: fruitsArray.fruits[indexPath.row])
        return customCell
    }
}
