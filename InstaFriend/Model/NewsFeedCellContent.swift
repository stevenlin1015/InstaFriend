//
//  NewsFeedCellContent.swift
//  InstaFriend
//
//  Created by 林松賢 on 2018/4/8.
//  Copyright © 2018年 林松賢. All rights reserved.
//

import Foundation
import UIKit
class NewsFeedCellContent {
    var userProfileImage: UIImage?
    var userID: String = ""
    var postImage: UIImage?
    var postLiked: Int = 0
    var postMessage: String = ""
    
    init(userProfileImage: UIImage, userID: String, postImage: UIImage, postLiked: Int, postMessage: String) {
        self.userProfileImage = userProfileImage
        self.userID = userID
        self.postImage = postImage
        self.postLiked = postLiked
        self.postMessage = postMessage
    }
}
