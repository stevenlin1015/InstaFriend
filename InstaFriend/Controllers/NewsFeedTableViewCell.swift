//
//  NewsFeedTableViewCell.swift
//  InstaFriend
//
//  Created by 林松賢 on 2018/4/8.
//  Copyright © 2018年 林松賢. All rights reserved.
//

import UIKit

class NewsFeedTableViewCell: UITableViewCell {
    @IBOutlet var userProfileImage: UIImageView!
    @IBOutlet var userID: UILabel!
    @IBOutlet var postImage: UIImageView!
    @IBOutlet var postLiked: UIButton!
    @IBOutlet var postMessage: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
