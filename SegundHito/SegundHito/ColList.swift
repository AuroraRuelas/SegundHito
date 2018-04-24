//
//  ColList.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 24/4/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//

import UIKit

class ColList: NSObject {
    let IDNOMBRE = "nombre"
//    let IDIMAGEN = "imagen"
    var sID:String?
    var sNombre:String?
    var iImagen:UIImage?
    func setMap(valores:[String:Any]) {
        sNombre = valores[IDNOMBRE] as! String
//        iImagen = valores[IDIMAGEN] as! UIImage
    }
    func getMap() -> [String:Any] {
        return[
            IDNOMBRE: sNombre as Any,
//            IDIMAGEN: iImagen as Any
        ]
    }
}
