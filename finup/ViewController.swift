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
        self.backgroundHeader()
        
        
    }
    
    func backgroundHeader()  {
        let gradient = CAGradientLayer()
        
        gradient.colors = [UIColor.headerBlue.cgColor, UIColor.headerPurple.cgColor]
        gradient.locations = [0,1]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 0)
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.width, height: headerView.frame.height)
        headerView.layer.insertSublayer(gradient, at: 0)
    }


}

