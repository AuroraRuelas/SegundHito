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
import FirebaseStorage

class DataHolder: NSObject {
    static let sharedInstance:DataHolder = DataHolder()
    var firestoreDB:Firestore?
    var firStorage:Storage?
    var numeroCeldasColeccion:UInt=5;
    var firDataBaseRef: DatabaseReference!
    var firStorageRef:StorageReference?
//    var vcMapa:VCMapa?
//    var sNick:String = "Aurora"
    var fireStoreDB:Firestore?
    var miPerfil:Perfiles = Perfiles()
    var arNombre:[ColList] = []
    
    
    func initFirebase()  {
        FirebaseApp.configure()
        firestoreDB = Firestore.firestore()
       firStorage = Storage.storage()
        firDataBaseRef =
            Database.database().reference().child("Swift")
            firStorage = Storage.storage()
        firStorageRef = firStorage?.reference()
        
        
//        let listasRef = firestoreDB?.collection("Listas")
//        let coleccionRef = firestoreDB?.collection("Colecciones")
        
    }
    func descargarColeccionListas() -> Bool {
        var blFin:Bool = false; DataHolder.sharedInstance.firestoreDB?.collection("Listas").addSnapshotListener { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
                blFin=false

            } else {
                for document in querySnapshot!.documents {
                    let nombre:ColList = ColList()
                    nombre.sID=document.documentID
                    nombre.setMap(valores: document.data())
                    self.arNombre.append(nombre)
                    print("\(document.documentID) => \(document.data())")
                }
                print("--->",self.arNombre.count)
//                self.miTabla?.reloadData()
                blFin = true
            }
        }
       return blFin
    }
    
   

 func descargarColeccion() -> Bool {
    var blFinC:Bool = false; DataHolder.sharedInstance.firestoreDB?.collection("Coleccion").addSnapshotListener { (querySnapshot, err) in
    if let err = err {
    print("Error getting documents: \(err)")
    blFinC=false
    
    } else {
    for document in querySnapshot!.documents {
    let nombre:ColList = ColList()
    nombre.sID=document.documentID
    nombre.setMap(valores: document.data())
    self.arNombre.append(nombre)
    print("\(document.documentID) => \(document.data())")
    }
    print("--->",self.arNombre.count)
    //                self.miTabla?.reloadData()
    blFinC = true
    }
    }
    return blFinC
}
    

}

@objc protocol DataHolderDelegate{
    func descargarColeccionListas()
    func descargarColeccion()
    
}

//    
//    func initLocationAdmin() {
//        vcMapa=VCMapa()
    

