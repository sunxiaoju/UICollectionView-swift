//
//  NameCell.swift
//  UICollectionView-swift
//
//  Created by chedao on 15/12/11.
//  Copyright © 2015年 chedao. All rights reserved.
//

import UIKit

class NameCell: UICollectionViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = UIColor.whiteColor()
    }

    func packCell(dic:NSDictionary) -> Void{
    
        self.icon.image = UIImage(named: dic.objectForKey("icon") as! String)
       self.nameLabel.text = dic.objectForKey("name") as? String
    }
    
}
