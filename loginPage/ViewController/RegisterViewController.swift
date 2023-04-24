//
//  RegisterViewController.swift
//  loginPage
//
//  Created by Rajeev on 14/04/23.
//

import UIKit

class RegisterViewController: UIViewController
{

    @IBOutlet var emailTxt: UITextField!
    @IBOutlet var phoneTxt: UITextField!
    @IBOutlet var passwordTxt: UITextField!
   // @IBOutlet var lblt: UILabel!
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    var emailt = UserDefaults.standard.string(forKey: "email")
    var passwordt = UserDefaults.standard.string(forKey: "password")
    var  phonet = UserDefaults.standard.string(forKey: "phone")
    
    @IBAction func registerAction(_ sender: UIButton)
    {
        UserDefaults.standard.set(emailTxt.text!, forKey: "email")
        UserDefaults.standard.set(passwordTxt.text!, forKey: "password")
        UserDefaults.standard.set(phoneTxt.text!, forKey: "phone")
        if let email = emailTxt.text,let password = passwordTxt.text , let phonenumber = phoneTxt.text
            {
                if !email.isValidEmail()
                {
                    //UserDefaults.standard.set(emailTxt.text, forKey: "email")
                    openAlert(title:"Alert",message:"email address not found.",alertStyle: .alert,actionTitles: ["Okay"],actionStyles:[.default],action: [{ _ in

                        print("okay clicked!")
                    }])
                }
                else if !password.isValidPassword()
                {
                   // UserDefaults.standard.set(passwordTxt.text, forKey: "password")
                    openAlert(title:"Alert",message:"please enter valid password.",alertStyle: .alert,actionTitles: ["Okay"],actionStyles:[.default],action: [{ _ in

                        print("okay clicked!")
                    }])
                }
               else if phonenumber.filterPhoneNumber().isValidPhone()
               {
                // UserDefaults.standard.set(phoneTxt.text, forKey: "phone")
                openAlert(title:"Alert",message:"Please enter a phone number",alertStyle: .alert,actionTitles: ["Okay"],actionStyles:[.default],action: [{ _ in

                    print("okay clicked!")
                }])
                }
                else
                {

                }
            let vcc = storyboard?.instantiateViewController(withIdentifier: "mainViewController")
            navigationController?.pushViewController(vcc!, animated: true)
            
            }else
            {
                openAlert(title:"Alert",message:"Please add detail.",alertStyle: .alert,actionTitles: ["Okay"],actionStyles:[.default],action: [{ _ in

                    print("okay clicked!")
                }])
            }
//            let alert = UIAlertController(title: "Congrulation", message: "registration is successful", preferredStyle: .alert)
//            let okbutton = UIAlertAction(title: "Ok", style: .default) {(action) in
//            }
//            alert.addAction(okbutton)
//            present(alert,animated: true,completion: nil)
        
//        let vcc = storyboard?.instantiateViewController(withIdentifier: "mainViewController")
//        navigationController?.pushViewController(vcc!, animated: true)

    }
    
    @IBAction func signBtn(_ sender: UIButton)
    {
        
    }
}

extension String
{
    func isValidPhone()-> Bool{
        let inputRegEx = "^((\\+)|(00))[0_9]{6,14}$"
        let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
        return inputpred.evaluate(with:self)
    }
    public func filterPhoneNumber()-> String
    {
        return String(self.filter {!" ()._-\n\t\r".contains($0)})
    }
}
