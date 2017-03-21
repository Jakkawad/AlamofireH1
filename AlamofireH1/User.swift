//
//  User.swift
//  AlamofireH1
//
//  Created by admin on 3/21/2560 BE.
//  Copyright © 2560 Jakkawad.Chaiplee. All rights reserved.
//

import Foundation

class User {
    var _id: String!
    var _username: String!
    var _password: String!
    var _password_nat: String!
    var _facebook_id: String!
    var _email: String!
    var _company: String!
    var _cash_total: String!
    var _picture_cover: String!
    var _country: String!
    var _default_contact_id: String!
    var _date_register: String!
    var _status_acc: String!
    var _user_ref: String!
    var _timelastactive: String!
    
    var id: String {
        return _id
    }
    var username: String {
        return _username
    }
    var password: String {
        return _password
    }
    var password_nat: String {
        return _password_nat
    }
    var facebook_id: String {
        return _facebook_id
    }
    var email: String {
        return _email
    }
    var company: String {
        return _company
    }
    var cash_total: String {
        return _cash_total
    }
    var picture_cover: String {
        return _picture_cover
    }
    var country: String {
        return _country
    }
    var default_contact_id: String {
        return _default_contact_id
    }
    var date_register: String {
        return _date_register
    }
    var status_acc: String {
        return _status_acc
    }
    var user_ref: String {
        return _user_ref
    }
    var timelastactive: String {
        return _timelastactive
    }
    init(userDictionary: Dictionary<String, AnyObject>) {
        if let id = userDictionary["id"] as? String {
            self._id = id
        }
        if let username = userDictionary["username"] as? String {
            self._username = username
        }
        if let password = userDictionary["password"] as? String {
            self._password = password
        }
        if let password_nat = userDictionary["password_nat"] as? String {
            self._password_nat = password_nat
        }
        if let facebook_id = userDictionary["facebook_id"] as? String {
            self._facebook_id = facebook_id
        }
        if let email = userDictionary["email"] as? String {
            self._email = email
        }
        if let company = userDictionary["company"] as? String {
            self._company = company
        }
        if let cash_toal = userDictionary["cash_total"] as? String {
            self._cash_total = cash_toal
        }
        if let picture_cover = userDictionary["picture_cover"] as? String {
            self._picture_cover = picture_cover
        }
        if let country = userDictionary["country"] as? String {
            self._country = country
        }
        if let default_contact_id = userDictionary["default_contact_id"] as? String {
            self._default_contact_id = default_contact_id
        }
        if let date_register = userDictionary["date_register"] as? String {
            self._date_register = date_register
        }
        if let status_acc = userDictionary["status_acc"] as? String {
            self._status_acc = status_acc
        }
        if let user_ref = userDictionary["user_ref"] as? String {
            self._user_ref = user_ref
        }
        if let timelastactive = userDictionary["timelastactive"] as? String {
            self._timelastactive = timelastactive
        }
    }
}
//"id": "0",
//"username": "admin_system",
//"password": "",
//"password_nat": "",
//"facebook_id": "",
//"email": "",
//"company": null,
//"cash_total": "1256",
//"picture_cover": "",
//"country": "th",
//"default_contact_id": null,
//"date_register": "2016-11-30 12:19:00",
//"status_acc": "0",
//"user_ref": "0",
//"timelastactive": ""
