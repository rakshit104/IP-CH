//
//  CollectionViewCell.swift
//  IP CH
//
//  Created by Rakshit Bhardwaj on 14/01/20.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func prepareView(data: String){
        print("cell")
        imageview.image = datasource
    }

}
