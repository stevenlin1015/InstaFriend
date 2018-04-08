//
//  LoginViewController.swift
//  InstaFriend
//
//  Created by 林松賢 on 2018/4/3.
//  Copyright © 2018年 林松賢. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    var userDatas: [UserData] = [UserData(username: "12341234", userpassword: "1234567890"),UserData(username: "adminadmin", userpassword: "1234567890")]
    
    
    @IBOutlet var userNameTextFieldOutlet: UITextField!
    @IBOutlet var passwordTextFieldOutlet: UITextField!
    @IBOutlet var loginButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextFieldOutlet.layer.borderWidth = 0.8
        userNameTextFieldOutlet.layer.borderColor = UIColor.lightGray.cgColor
        userNameTextFieldOutlet.layer.cornerRadius = 8.0
        passwordTextFieldOutlet.layer.borderWidth = 0.8
        passwordTextFieldOutlet.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextFieldOutlet.layer.cornerRadius = 8.0
        userNameTextFieldOutlet.delegate = self
        passwordTextFieldOutlet.delegate = self
        loginButtonOutlet.isEnabled = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:IBAction
    @IBAction func usernameTextField(_ sender: UITextField) {
        if let usernameLength = userNameTextFieldOutlet.text, usernameLength.count >= 8, let passwordLength = passwordTextFieldOutlet.text, passwordLength.count >= 8 {
            loginButtonOutlet.alpha = 1.0
            loginButtonOutlet.isEnabled = true
        } else {
            loginButtonOutlet.alpha = 0.5
            loginButtonOutlet.isEnabled = false
        }
    }
    @IBAction func passwordTextField(_ sender: UITextField) {
        if let usernameLength = userNameTextFieldOutlet.text, usernameLength.count >= 8, let passwordLength = passwordTextFieldOutlet.text, passwordLength.count >= 8 {
            loginButtonOutlet.alpha = 1.0
            loginButtonOutlet.isEnabled = true
        } else {
            loginButtonOutlet.alpha = 0.5
            loginButtonOutlet.isEnabled = false
        }
    }
    @IBAction func loginButton(_ sender: UIButton) {
        if let username = userNameTextFieldOutlet.text, let userpassword = passwordTextFieldOutlet.text {
            for user in userDatas {
                if user.username == username && user.userpassword == userpassword {
                    print("Login confirmed.")
                } else {
                    print("No matched user")
                    print("username: \(username) <> user.username: \(user.username)")
                    print("userpassword: \(userpassword) <> user.userpassword: \(user.userpassword)")
                    let alertView = UIAlertController(title: "錯誤", message: "無效的帳號或密碼，請重新輸入。", preferredStyle: .alert)
                    let OKAction = UIAlertAction(title: "好", style: .default, handler: { (void) in
                        self.passwordTextFieldOutlet.text = ""
                    })
                    alertView.addAction(OKAction)
                    present(alertView, animated: true, completion: nil)
                }
            }
        }
    }
    
    
    //MARK:UITextField
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userNameTextFieldOutlet.resignFirstResponder()
        passwordTextFieldOutlet.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
