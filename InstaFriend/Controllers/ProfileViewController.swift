//
//  ProfileViewController.swift
//  InstaFriend
//
//  Created by 林松賢 on 2018/4/11.
//  Copyright © 2018年 林松賢. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    let userIDLabel = UILabel()
    var userIDFromLoginPage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //configure user ID on NavigationBar
        userIDLabel.text = userIDFromLoginPage
        userIDLabel.sizeToFit()
        let leftBarItem = UIBarButtonItem(customView: userIDLabel)
        navigationItem.leftBarButtonItem = leftBarItem
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
