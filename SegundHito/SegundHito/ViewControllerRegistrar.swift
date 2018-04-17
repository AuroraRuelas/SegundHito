//
//  ViewControllerRegistrar.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 10/4/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class ViewControllerRegistrar: UIViewController {
    
    @IBOutlet var txtUserRegistro:UITextField?
    @IBOutlet var txtPasswordRegistro:UITextField?
    @IBOutlet var txtPasswordRegistroRep:UITextField?
    @IBOutlet var txtEmail:UITextField?
    @IBOutlet var btnOK:UIButton?
    @IBOutlet var btnCancelar:UIButton?
    @IBAction func clickOKRegistro(){
        DataHolder.sharedInstance.miPerfil.sNombre = "Karyna"
        DataHolder.sharedInstance.miPerfil.sEmail = "karyna.aurora@gmail.com"
        DataHolder.sharedInstance.miPerfil.sPassword = "123456"
   
        print("Usuario Pulso OK")
        if txtPasswordRegistro?.text==txtPasswordRegistroRep?.text{
            print("IF")
        
            // Add a new document with a generated ID
            Auth.auth().createUser(withEmail: (txtEmail?.text)!, password: (txtPasswordRegistro?.text)!){
                (user , error) in
                if (user != nil){
                    self.performSegue(withIdentifier: "trRegistroCorr", sender: self)
                    DataHolder.sharedInstance.firestoreDB?.collection("Usuarios").document((user?.uid)!).setData( [
                        "first": self.txtUserRegistro?.text,
                        "email": self.txtEmail?.text,
                        "password": self.txtPasswordRegistro?.text
                    ]) { err in
                        if let err = err {
                            print("Error adding document: \(err)")
                        } else {
//                            print(error!)
                        }
                    }
                }
                else{
                    print(error!)
                }
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    @IBAction func accionRegistrar(){
////        Auth.auth().createUser(withEmail: (txtEmail?.text)!, password: (txtPasswordRegistro?.text)!){
////            (user , error) in
////            if (user != nil){
////
////               DataHolder.sharedInstance.firestoreDB?.collection("Usuarios").document((user?.uid)!).setData( [
////                    "first": "Ada",
////                    "last": "Lovelace",
////                    "born": 1815
////                ]) { err in
////                    if let err = err {
////                        print("Error adding document: \(err)")
////                    } else {
////                        print(error!)
////                    }
////                }
////            }
////            else{
////                print(error!)
////            }
////        }
////
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
