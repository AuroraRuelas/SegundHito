//
//  ViewControllerLogin.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 10/4/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewControllerLogin: UIViewController {
    @IBOutlet var txtUser:UITextField?
    @IBOutlet var txtPasswordLogin:UITextField?
    @IBOutlet var btnLogin:UIButton?
    @IBOutlet var btnRegistrar:UIButton?
//    @IBAction func clickLogin(){
//        print(" Usuario Pulso Login "+(txtPasswordLogin?.text)!)
//        if txtUser?.text=="Aurora" && txtPasswordLogin?.text=="1234"{
//            print("IF")
//            self.performSegue(withIdentifier: "trLoginCorr", sender: self)
//
//        }
//    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func accionLogin(){
                Auth.auth().signIn(withEmail: (txtUser?.text)!, password: (txtPasswordLogin?.text)!){
            (user , error) in
                if (user != nil){
                    let refPerfil = DataHolder.sharedInstance.firestoreDB?.collection("Usuarios").document((user?.uid)!)
                        refPerfil?.getDocument { (document , error) in
                        if document != nil {
                            DataHolder.sharedInstance.miPerfil.setMap(valores:(document?.data())!)
                            self.performSegue(withIdentifier: "trLoginCorr", sender: self)

                                
                            print(document?.data())
                            }else{
                                print(error!)
                            }
                       
                    }
               
                }
                else{
                    print(error!)
                }
            
            }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
