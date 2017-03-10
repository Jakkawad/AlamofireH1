//
//  Product.swift
//  AlamofireH1
//
//  Created by admin on 3/10/2560 BE.
//  Copyright © 2560 Jakkawad.Chaiplee. All rights reserved.
//

import Foundation

class Product {
    var _id: String!
    var _categoryId: String!
    var _imageShow_cover: String!
    var _imageId: String!
    var _name: String!
    var _nat_price: String!
    var _snat_price: String!
    var _detail: String!
    var _detail_web: String!
    var _optionId: String!
    var _optionValue: String!
    var _cashBack_percent: String!
    var _aff_percent: String!
    var _show_hidden: String!
    var _quality: String!
    var _sku_id: String!
    var _status: String!
    
    var id: String {
        return _id
    }
    
    var categoryId: String {
        return _categoryId
    }
    
    var imageShow_cover: String {
        return _imageShow_cover
    }
    
    var imageId: String {
        return _imageId
    }
    
    var name: String {
        return _name
    }
    
    var nat_price: String {
        return _nat_price
    }
    
    var snat_price: String {
        return _snat_price
    }
    
    var detail: String {
        return _detail
    }
    
    var detail_web: String {
        return _detail_web
    }
    
    var optionId: String {
        return _optionId
    }
    
    var optionValue: String {
        return _optionValue
    }
    
    var cashBack_percent: String {
        return _cashBack_percent
    }
    
    var aff_percent: String {
        return _aff_percent
    }
    
    var show_hidden: String {
        return _show_hidden
    }
    
    var quality: String {
        return _quality
    }
    
    var sku_id: String {
        return _sku_id
    }
    
    var status: String {
        return _status
    }
    
    init(productDictionary: Dictionary<String, AnyObject>) {
        if let id = productDictionary["id"] as? String {
            self._id = id
            //            print("id: \(id)")
        }
        if let categoryId = productDictionary["categoryid"] as? String {
            self._categoryId = categoryId
            //            print("categoryId: \(categoryId)")
        }
        if let imageShow_cover = productDictionary["imageshow_cover"] as? String {
            self._imageShow_cover = imageShow_cover
            //            print("imageShow_cover: \(imageShow_cover)")
        }
        if let imageId = productDictionary["imageid"] as? String {
            self._imageId = imageId
            //            print("imageId: \(imageId)")
        }
        if let name = productDictionary["name_product"] as? String {
            self._name = name
            //            print("name: \(name)")
        }
        if let nat_price = productDictionary["nat_price"] as? String {
            self._nat_price = nat_price
            //            print("nat_price: \(nat_price)")
        }
        if let snat_price = productDictionary["snat_price"] as? String {
            self._snat_price = snat_price
            //            print("snat_price: \(snat_price)")
        }
        if let detail = productDictionary["details"] as? String {
            self._detail = detail
            //            print("detail: \(detail)")
        }
        if let detail_web = productDictionary["detail_web"] as? String {
            self._detail_web = detail_web
            print("detail_web: \(detail_web)")
        }
        if let optionId = productDictionary["optionsid"] as? String {
            self._optionId = optionId
            //            print("optionId: \(optionId)")
        }
        if let optionValue = productDictionary["optionvalue"] as? String {
            self._optionValue = optionValue
            //            print("optionValue: \(optionValue)")
        }
        if let cashBack_percent = productDictionary["cashback_percent"] as? String {
            self._cashBack_percent = cashBack_percent
            //            print("cashBack_percent: \(cashBack_percent)")
        }
        if let aff_percent = productDictionary["aff_percent"] as? String {
            self._aff_percent = aff_percent
            //            print("aff_percent: \(aff_percent)")
        }
        if let show_hidden = productDictionary["show_hidden"] as? String {
            self._show_hidden = show_hidden
            //            print("show_hidden: \(show_hidden)")
        }
        if let quality = productDictionary["qty"] as? String {
            self._quality = quality
            //            print("quality: \(quality)")
        }
        if let sku_id = productDictionary["sku_id"] as? String {
            self._sku_id = sku_id
            //            print("sku_id: \(sku_id)")
        }
        if let status = productDictionary["status"] as? String {
            self._status = status
            //            print("status: \(status)")
        }
    }
}
