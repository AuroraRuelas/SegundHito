//
//  DataHolder.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 10/4/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
class DataHolder: NSObject {
    static let sharedInstance:DataHolder = DataHolder()
    var firestoreDB:Firestore?
    var numeroCeldasColeccion:UInt=5;
    var firDataBaseRef: DatabaseReference!
//    var vcMapa:VCMapa?
//    var sNick:String = "Aurora"
    var fireStoreDB:Firestore?
    var miPerfil:Perfiles = Perfiles()
    
    func initFirebase()  {
        FirebaseApp.configure()
        firestoreDB = Firestore.firestore()
    }

//    
//    func initLocationAdmin() {
//        vcMapa=VCMapa()
//    }
}
