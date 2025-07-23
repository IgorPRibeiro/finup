//
//  ViewController.swift
//  finup
//
//  Created by Igor Pinheiro Ribeiro on 22/06/25.
//

import UIKit


class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var mounthSpandContainer: UIView!
    let margins = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    let cellSpacingHeight: CGFloat = 2

    struct Transaction {
        let icon: String
        let name: String
        let date: String
        let value: String
        let subIcon: String
    }
    
    let data: [Transaction] = [
        Transaction(icon: "market", name: "Supermercado", date: "Hoje", value: "9,99", subIcon: "wallet"),
        Transaction(icon: "market", name: "Supermercado1", date: "Hoje", value: "9,99", subIcon: "wallet"),
        Transaction(icon: "market", name: "Supermercado2", date: "Hoje", value: "9,99", subIcon: "wallet"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        table.backgroundView = nil
        table.isOpaque = true
        mounthSpandContainer.layer.cornerRadius = 16

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let transaction = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellHome", for: indexPath) as! HomeTableViewCell
      
        cell.iconImageViewL.image = UIImage(named: transaction.icon)
        cell.titleLabelL.text = transaction.name
        cell.subtitleLabelL.text = transaction.date
        cell.valueLabelL.text = transaction.value
        cell.subIconImageViewL.image = UIImage(named: transaction.subIcon)

    
        cell.layer.cornerRadius = 12
        cell.layer.masksToBounds = true
        cell.contentView.layer.masksToBounds = true

        
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
     
        cell.contentView.layoutMargins = margins
        cell.contentView.backgroundColor = .clear
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 74
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .clear
        return headerView
    }
    
 


}

