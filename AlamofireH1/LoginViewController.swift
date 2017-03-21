//
//  LoginViewController.swift
//  AlamofireH1
//
//  Created by admin on 3/21/2560 BE.
//  Copyright © 2560 Jakkawad.Chaiplee. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {

    var user: User!
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var lblWarning: UILabel!
    
    @IBAction func btnLogin(_ sender: Any) {
        login(username: txtUsername.text!, password: txtPassword.text!)
    }
    
    func loginFail(status: Bool) {
        if status {
            print("fail")
            self.txtUsername.layer.borderWidth = 1.0
            self.txtUsername.layer.borderColor = UIColor.red.cgColor
            self.txtPassword.layer.borderWidth = 1.0
            self.txtPassword.layer.borderColor = UIColor.red.cgColor
            self.lblWarning.isHidden = false
        } else {
            print("success")
            self.lblWarning.isHidden = true
            self.txtUsername.layer.borderColor = UIColor.clear.cgColor
            self.txtPassword.layer.borderColor = UIColor.clear.cgColor
//            self.dismiss(animated: false, completion: nil)
            print("dissmiss")
        }
    }
    
    func login(username: String, password: String) {
//        print("username: \(username)")
//        print("password: \(password)")
        Alamofire.request("http://a2b.mul.pw/api/v2/user_acc/?where=username;eq;\(username);and;password_nat;eq;\(password)").responseJSON { response in
            if let result = response.result.value as? Dictionary<String, AnyObject> {
//                print("result: \(result)")
                
                
                if let user = result["user_acc"] as? [Dictionary<String, AnyObject>] {
                    self.loginFail(status: false)
                    print("user: \(user)")
//                    for object in user {
//                        let user = User(userDictionary: object)
//                    }
                } else {
//                    print("Login Fail")
                    
                    self.loginFail(status: true)
                    
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblWarning.isHidden = true
        
//        txtPassword.layer.borderWidth = 1.0
//        txtPassword.layer.borderColor = UIColor.red.cgColor
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
