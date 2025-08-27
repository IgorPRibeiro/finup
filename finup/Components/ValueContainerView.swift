//
//  ValueContainerView.swift
//  finup
//
//  Created by Igor Pinheiro Ribeiro on 04/08/25.
//

import UIKit

class ValueContainerView: UIView {
    static let identifier = "ValueContainerView"
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var valueLabel: UILabel!
    let currencyFormatter = NumberFormatter()
    
    
    @IBOutlet var containerView: UIView!
    

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
   func initSubviews() {
       let nib = UINib(nibName: ValueContainerView.identifier, bundle: nil)

       guard let view = nib.instantiate(withOwner: self, options: nil).first as?
                           UIView else {fatalError("Unable to convert nib")}
       
       
       
       view.frame = bounds
       view.autoresizingMask = [.flexibleWidth,.flexibleHeight]
       view.layer.cornerRadius = 16
       containerView.layer.cornerRadius = 16
       currencyFormatter.usesGroupingSeparator = true
       currencyFormatter.numberStyle = .currency
       currencyFormatter.locale = Locale.current

       addSubview(view)
    }
    
    func configureTitleAndValue(title: String, value: Double, color: UIColor?) {
        let priceString = currencyFormatter.string(from: NSNumber(value: value))!

        titleLabel.text = title
        valueLabel.text = priceString
        if color != nil {
            valueLabel.textColor = color
        } else {
            valueLabel.textColor = UIColor.white
        }
        
    }
    
}
