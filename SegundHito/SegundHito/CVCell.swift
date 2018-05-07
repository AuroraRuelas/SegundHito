//
//  CVCell.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 18/4/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//

import UIKit

class CVCell: UICollectionViewCell {
    @IBOutlet var imageC:UIImageView?
    @IBOutlet var lblColl:UILabel?
    var imagenDescargadaC:UIImage?

//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    func mostrarImagenes(uri:String) {
        self.imageC?.image = nil
        
        //        if imagenDescargada == nil{
        let imageReference = DataHolder.sharedInstance.firStorage?.reference(forURL:uri)
        imageReference?.getData(maxSize: 1 * 1024 * 1024) { data, error in
            if error != nil{
                
            } else{
                self.imagenDescargadaC = UIImage(data: data!)
                self.imageC?.image = self.imagenDescargadaC
            }
            
        }
        
        //        }
        
    }
}

