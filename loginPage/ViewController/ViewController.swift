//
//  ViewController.swift
//  loginPage
//
//  Created by Rajeev on 13/04/23.
//

import UIKit

class ViewController: UIViewController
{
//{
//    var imageVeiw: UIImageView = {
//        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
//        imageView.image = UIImage(named: "welcome")
//        return imageView
//    }()

    
    
    
    
    @IBOutlet var mailTxt: UITextField!
    @IBOutlet var passwordtxtt: UITextField!
    @IBOutlet var signWithGooglebtn: UIButton!
    @IBOutlet var lblUser: UILabel!
    
    
    override func viewDidLoad()
    {
//        super.viewDidLoad()
//        view.addSubview(imageVeiw)
//        DispatchQueue.main.asyncAfter(deadline: .now()+10)
//        {
//            self.performSegue(withIdentifier: "title", sender: self)
//        }
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        imageVeiw.center = view.center
//        DispatchQueue.main.asyncAfter(deadline: .now()+1)
//        {
//            self.animation()
//        }
//    }
//func animation()
//    {
//        UIView.animate(withDuration: 1)
//        {
//            let size = self.view.frame.size.width * 2
//            let xpostion = size - self.view.frame.width
//            let yposition = self.view.frame.height-size
//
//            self.imageVeiw.frame = CGRect(x: -(xpostion/2), y: yposition/2, width: size, height: size)
//            self.imageVeiw.alpha = 0
//
//        }
    }
    
    @IBAction func SignBtn(_ sender: UIButton)
    {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
       
        if passwordtxtt.text == vc.passwordt ,mailTxt.text == vc.emailt
        {
            let vcc = storyboard?.instantiateViewController(withIdentifier: "mainViewController")
            navigationController?.pushViewController(vcc!, animated: true)
        }
        else
        {
            let alert = UIAlertController(title: "Warning", message: "Password is wrong?", preferredStyle: .alert)
            let okbutton = UIAlertAction(title: "Ok", style: .default) {(action) in
            }
            alert.addAction(okbutton)
            present(alert,animated: true,completion: nil)
        }
    }
    
    @IBAction func signGoogleBtn(_ sender: UIButton)
    {
        
    }
    
    @IBAction func registerBtnView(_ sender: UIButton)
    {
        
    }
}

