//
//  alert&validationCode.swift
//  loginPage
//
//  Created by Rajeev on 15/04/23.
//

import Foundation
import UIKit


extension String
{
    public func isValidPassword() -> Bool {
        let passwordRegex = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{8,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self)
    }
    //xtension String {
        func isValidEmail() -> Bool {
            // here, `try!` will always succeed because the pattern is valid
            let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
            return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
        }
    
    func applyPredicateOnRegex(regexStr: String) -> Bool
    {
        let trimmedString = self.trimmingCharacters(in: .whitespaces)
        let validateOtherString = NSPredicate(format: "SELF MATCHES %@", regexStr)
        let isValidateOtherString = validateOtherString.evaluate(with: trimmedString)
        return isValidateOtherString
    }
}

extension UIViewController
{
    
    
    public func openAlert(title: String,
message: String,
alertStyle:UIAlertController.Style,
actionTitles:[String],
                          actionStyles:[UIAlertAction.Style],
action: [((UIAlertAction) -> Void)])
    {
        let alertController =  UIAlertController(title: title, message: message, preferredStyle: alertStyle)
        for(index,indexTitle) in actionTitles.enumerated()
        {
            let action=UIAlertAction(title:indexTitle,style:actionStyles[index],handler: action[index])
            alertController.addAction(action)
            
            
        }
       // self.present(alertController,animated: true)
        self.present(alertController,animated: true)
    }
}
