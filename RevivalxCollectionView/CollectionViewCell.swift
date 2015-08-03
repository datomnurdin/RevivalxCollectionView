//
//  CollectionViewCell.swift
//  RevivalxCollectionView
//
//  Created by Mohammad Nurdin bin Norazan on 2/25/15.
//  Copyright (c) 2015 Nurdin Norazan Services. All rights reserved.
//

import UIKit
import Haneke
import SwiftyJSON


class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView:UIImageView!
    
    var data:SwiftyJSON.JSON?{
        didSet{
            self.setupData()
        }
    }
    
    func setupData(){
        
        if let urlString = self.data?["images"]["standard_resolution"]["url"]{
            let url = NSURL(string: urlString.stringValue)
            self.imageView.hnk_setImageFromURL(url!)
        }
        
    }

}
