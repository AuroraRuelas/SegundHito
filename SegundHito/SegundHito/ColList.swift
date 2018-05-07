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
    let IDURLIMAGEN = "url_image"
    var sID:String?
    var sNombre:String?
    var iImagen:UIImage?
    var sUrlImage:String?
    func setMap(valores:[String:Any]) {
        sNombre = valores[IDNOMBRE] as! String
        sUrlImage = valores[IDURLIMAGEN] as? String

    }
    func getMap() -> [String:Any] {
        return[
            IDNOMBRE: sNombre as Any,
            IDURLIMAGEN: sUrlImage as Any,

        ]
    }
}
