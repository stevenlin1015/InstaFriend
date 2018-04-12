//
//  TrendingViewController.swift
//  InstaFriend
//
//  Created by 林松賢 on 2018/4/8.
//  Copyright © 2018年 林松賢. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    let trendingImageDataSources: [String] = [
        "trendingImage_1",
        "trendingImage_2",
        "trendingImage_3",
        "trendingImage_4",
        "trendingImage_5",
        "trendingImage_6",
        "trendingImage_7",
        "trendingImage_8"
    ]
    @IBOutlet var trendingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        trendingCollectionView.dataSource = self
        trendingCollectionView.delegate = self
        let screenRect = UIScreen.main.bounds
        
        let layout = UICollectionViewFlowLayout()
        layout.estimatedItemSize = CGSize(width: screenRect.width/3, height: screenRect.width/3)
        trendingCollectionView = UICollectionView(frame: screenRect, collectionViewLayout: layout)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return trendingImageDataSources.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! TrendingImageCollectionViewCell
        cell.trendingImage.image = UIImage(named: trendingImageDataSources[indexPath.row])
        return cell
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
