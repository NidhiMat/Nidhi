//
//  OrdersViewController.swift
//  Lutong Bahay
//
//  Created by Amit Mathur on 25/02/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class OrdersViewController: LBBaseViewController {

    @IBOutlet weak var lineImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelledBtnTapped(_ sender: Any) {
    }
    @IBAction func completedBtnTapped(_ sender: Any) {
    }
    @IBAction func backBtnTapped(_ sender: Any) {
        actionBackTapped()
    }
    
    @IBAction func processingBtnTapped(_ sender: Any) {
    }
}
extension OrdersViewController: UITableViewDataSource, UITableViewDelegate {
    //MARK: Table View Delegates
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewNib = UINib(nibName: "OrderTableViewCell", bundle: nil)
        tableView.register(tableViewNib, forCellReuseIdentifier: "OrderTableViewCell")
        if let cell: OrderTableViewCell = tableView.dequeueReusableCell(withIdentifier: "OrderTableViewCell") as? OrderTableViewCell {
            return cell
        }
        return UITableViewCell()
    }
    
    
}
