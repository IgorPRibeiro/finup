//
//  InsertTransactionViewController.swift
//  finup
//
//  Created by Igor Pinheiro Ribeiro on 04/08/25.
//

import Foundation
import UIKit

class InsertTransactionViewController: UIViewController {
    
    @IBOutlet var totalValueContainer: ValueContainerView!

    @IBOutlet var incomeValueContainer: ValueContainerView!
    
    @IBOutlet var expensesValueContainer: ValueContainerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalValueContainer.configureTitleAndValue(title: "Saldo Total", value: 5250.25, color: UIColor.valueGreen)
      incomeValueContainer.configureTitleAndValue(title: "Receitas", value: 7350.12, color: UIColor.valueGreen)
      expensesValueContainer.configureTitleAndValue(title: "Gastos", value: 2110.50, color: UIColor.red)
    }
}
