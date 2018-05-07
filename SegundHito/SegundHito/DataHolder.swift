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
import Fire
class DataHolder: NSObject {
    static let sharedInstance:DataHolder = DataHolder()
    var firestoreDB:Firestore?
    var firStorage:Storage?
    var numeroCeldasColeccion:UInt=5;
    var firDataBaseRef: DatabaseReference!
//    var vcMapa:VCMapa?
//    var sNick:String = "Aurora"
    var fireStoreDB:Firestore?
    var miPerfil:Perfiles = Perfiles()
    var arNombre:[ColList] = []
    func initFirebase()  {
        FirebaseApp.configure()
        firestoreDB = Firestore.firestore()
       firStorage = Storage.storage()
        
//        let listasRef = firestoreDB?.collection("Listas")
//        let coleccionRef = firestoreDB?.collection("Colecciones")
        
    }
//    func descargarColeccionListas() -> Bool {
//        var blFin:Bool = false; DataHolder.sharedInstance.firestoreDB?.collection("Listas").addSnapshotListener { (querySnapshot, err) in
//            if let err = err {
//                print("Error getting documents: \(err)")
//                blFin=false
//                
//            } else {
//                for document in querySnapshot!.documents {
//                    let nombre:ColList = ColList()
//                    nombre.sID=document.documentID
//                    nombre.setMap(valores: document.data())
//                    self.arNombre.append(nombre)
//                    print("\(document.documentID) => \(document.data())")
//                }
//                print("--->",self.arNombre.count)
////                self.miTabla?.reloadData()
//                blFin = true
//            }
//        }
//       return blFin
//    }
}
//@objc protocol DataHolderDelegate{
//    @objc optional func DHDdescargarColeccionListas()
//
//}

    
//    
//    func initLocationAdmin() {
//        vcMapa=VCMapa()
//    }

