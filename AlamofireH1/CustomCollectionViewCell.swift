//
//  CustomCollectionViewCell.swift
//  AlamofireH1
//
//  Created by admin on 3/10/2560 BE.
//  Copyright © 2560 Jakkawad.Chaiplee. All rights reserved.
//

import UIKit
import AlamofireImage

class CustomCollectionViewCell: UICollectionViewCell {
    
    var product: Product!
    
    @IBOutlet weak var imageView: UIImageView!
    
    func configureCell(product: Product!) {
        imageView.af_setImage(withURL: NSURL(string: "http://a2b.mul.pw/static/img\(product.imageShow_cover)") as! URL)
    }
}
