//
//  ColCollec.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 7/5/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//

import UIKit

class ColCollec: NSObject {
    let IDNOMBREC = "nombre"
    let IDIMAGEN = "url_image"
    var sID:String?
    var sNombre:String?
    var iImagen:String?
    

    func setMap(valores:[String:Any]) {
        sNombre = valores[IDNOMBREC] as! String
        iImagen = valores[IDIMAGEN] as! String
    }
    func getMap() -> [String:Any] {
        return[
            IDNOMBREC: sNombre as Any,
            IDIMAGEN: iImagen as Any
        ]
    }
    
    
    
}
