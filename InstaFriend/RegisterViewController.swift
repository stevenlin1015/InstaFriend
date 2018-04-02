//
//  ViewController.swift
//  InstaFriend
//
//  Created by 林松賢 on 2018/3/31.
//  Copyright © 2018年 林松賢. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet var cellphoneButton: UIButton!
    @IBOutlet var emailButton: UIButton!
    var isRegisterUsingCellphone = true
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var inputTextFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.layer.cornerRadius = 8.0
        cellphoneButton.setTitleColor(.black, for: .normal)
        inputTextFieldOutlet.layer.borderWidth = 0.8
        inputTextFieldOutlet.layer.borderColor = UIColor.lightGray.cgColor
        inputTextFieldOutlet.layer.cornerRadius = 8.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func registerWithCellphoneButton(_ sender: UIButton) {
        if (isRegisterUsingCellphone == false) {
            cellphoneButton.setTitleColor(.black, for: .normal)
            emailButton.setTitleColor(.lightGray, for: .normal)
            isRegisterUsingCellphone = true
        }
    }
    @IBAction func registerWithEmailButton(_ sender: UIButton) {
        if (isRegisterUsingCellphone == true) {
            emailButton.setTitleColor(.black, for: .normal)
            cellphoneButton.setTitleColor(.lightGray, for: .normal)
            isRegisterUsingCellphone = false
        }
    }
    
    @IBAction func inputTextField(_ sender: UITextField) {
    }
    @IBAction func nextStepButtonClicked(_ sender: UIButton) {
        nextButton.backgroundColor = UIColor(red: 45.0/255.0, green: 143.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    }
    @IBAction func nextStepButtonReleased(_ sender: UIButton) {
        nextButton.backgroundColor = UIColor(red: 54.0/255.0, green: 155.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    }
    @IBAction func loginButton(_ sender: UIButton) {
    }
    
    
}

