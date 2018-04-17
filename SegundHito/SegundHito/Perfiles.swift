//
//  Perfiles.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 17/4/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//

import UIKit

class Perfiles: NSObject {
    var sEmail:String?
    var sNombre:String?
    var sPassword:String?
    
    func setMap(valores:[String:Any]){
        sEmail = valores["email"] as? String
        sNombre = valores["first"] as? String
        sPassword = valores["password"] as? String
    }
    func getMap() -> [String:Any] {
        var mapTemp:[String:Any] = [:]
        mapTemp["email"] = sEmail
        mapTemp["first"] = sNombre
        mapTemp["password"] = sPassword
        return mapTemp
    }
}
