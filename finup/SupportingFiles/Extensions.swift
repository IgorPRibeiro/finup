//
//  Extensions.swift
//  finup
//
//  Created by Igor Pinheiro Ribeiro on 23/06/25.
//

import Foundation
import UIKit

extension UIColor {
    
    static let headerBlue = UIColor().colorFromHex("2563EB")
    static let headerPurple = UIColor().colorFromHex("9333EA")
    
    func colorFromHex(_ hex: String) -> UIColor {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix("#") {
            hexString.remove(at: hexString.startIndex)
        }
        
        assert(hexString.count == 6, "Invalid hex code used.")

      

        // using 64bit for security, to garant the hex value with 6 digits or 8 fit securely, without overflow risk
        var rgb: UInt64 = 0
        
        // try read the hex number from string and save the int value at rgv var. ex: FF5733(hex) -> 16734003(int). So, rgb is now 16734003
        Scanner(string: hexString).scanHexInt64(&rgb)
        
        // (rgb & 0xFF0000) make a AND binary operation between rgb and 0xFF0000 this mask (0xFF0000) is using to isolate the bits from the red chanel
        // >>16 move bits to 16 places to the right, that is, removes the last two bytes tha correstpond to green and blue
        return UIColor.init(red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
                            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
                            blue: CGFloat(rgb & 0x0000FF) / 255.0,
                            alpha: 1.0)
    }
}
