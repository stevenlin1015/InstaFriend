//
//  UserData.swift
//  InstaFriend
//
//  Created by 林松賢 on 2018/4/8.
//  Copyright © 2018年 林松賢. All rights reserved.
//

import Foundation
struct UserData {
    var username: String = ""
    var userpassword: String = ""
    
    init(username: String, userpassword: String) {
        self.username = username
        self.userpassword = userpassword
    }
}
