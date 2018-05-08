//
//  DHMapa.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 8/5/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//


import UIKit

class DHMapa: NSObject {
    let LATI = "LAT"
    let LONG = "LON"
    let TITLE = "titulo"
    var sLatitud:String?
    var sLongitud:String?
    var sTitulo:String?
    func setMap(valores:[String:Any])  {
        sLatitud = valores[LATI] as! String
        sLongitud = valores[LONG] as! String
        sTitulo = valores[TITLE] as! String    }
    func getMap() -> [String:Any] {
        return[
            LATI: sLatitud as Any,
            LONG: sLongitud as Any,
            TITLE: sTitulo as Any,
        ]
    }
}
