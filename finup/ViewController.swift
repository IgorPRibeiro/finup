//
//  ViewController.swift
//  finup
//
//  Created by Igor Pinheiro Ribeiro on 22/06/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerView.clipsToBounds = true
        headerView.layer.cornerRadius = 20
        headerView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
    }


}

