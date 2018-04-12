//
//  DataHolder.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 10/4/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//

import UIKit
import Firebase
class DataHolder: NSObject {
    static let sharedInstance:DataHolder = DataHolder()
    var firestoreDB:Firestore?
//    var sNick:String = "Aurora"
    
    func initFirebase()  {
        FirebaseApp.configure()
        firestoreDB = Firestore.firestore()
    }
}
