//
//  VCSeleccionar.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 21/5/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//

import UIKit

class VCSeleccionar: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet var imageView:UIImageView?
    let imagePicker = UIImagePickerController()
    var imgData:NSData?
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func accionBtnGal(){
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        self.present(imagePicker, animated: true, completion: nil)
    
    }
    @IBAction func accionBtnCam(){
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .camera
        self.present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func accionBtnSubir(){
        let fecha:Date = Date()
        let tiempoEnMillis = Int64((fecha.timeIntervalSince1970*1000.0).rounded())
        
        let rutaFicher:String = String(format: "UP/miimagen_%d.jpg", tiempoEnMillis)
        let imgRef = DataHolder.sharedInstance.firStorageRef?.child(rutaFicher)
        
        let uploadTask = imgRef?.putData(imgData! as Data ,metadata:nil){ (metadata,error)
            in
            guard let metadata = metadata else{
                return
            }
            let downloadURL = metadata.downloadURL
            print("MI URL: " , downloadURL)
        }
        
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let img = info[UIImagePickerControllerOriginalImage] as? UIImage
        imgData = UIImageJPEGRepresentation(img!, 0.5)! as Data as NSData
        imageView?.image = img
        self.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
          self.dismiss(animated: true, completion: nil)
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
