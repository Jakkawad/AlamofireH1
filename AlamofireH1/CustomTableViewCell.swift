//
//  CustomTableViewCell.swift
//  AlamofireH1
//
//  Created by admin on 3/10/2560 BE.
//  Copyright © 2560 Jakkawad.Chaiplee. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class CustomTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    var product: Product!
    var products = [Product]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func loadJSON() {
        Alamofire.request("http://a2b.mul.pw/api/v2/product").responseJSON { response in
            if let result = response.result.value as? Dictionary<String, AnyObject> {
                if let product = result["product"] as? [Dictionary<String, AnyObject>] {
//                    print("product: \(product)")
                    for obj in product {
                        let product = Product(productDictionary: obj)
                        self.products.append(product)
                    }
                    self.collectionView.reloadData()
                }
            }
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell0 = collectionView.dequeueReusableCell(withReuseIdentifier: "tableCell0", for: indexPath) as? CustomCollectionViewCell
        let product = products[indexPath.row]
        cell0?.configureCell(product: product)
        return cell0!
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        loadJSON()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
