//
//  TVCell.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 17/4/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//

import UIKit

class TVCell: UITableViewCell {
    
    @IBOutlet var labelNombre:UILabel?
    @IBOutlet var imagen:UIImageView?
    var imagenDescargada:UIImage?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func mostrarImagenes(uri:String) {
        self.imagen?.image = nil
        
//        if imagenDescargada == nil{
        let imageReference = DataHolder.sharedInstance.firStorage?.reference(forURL:uri)
            imageReference?.getData(maxSize: 1 * 1024 * 1024) { data, error in
                if error != nil{
                    
                } else{
                    self.imagenDescargada = UIImage(data: data!)
                    self.imagen?.image = self.imagenDescargada
                }
        
                }
      
//        }
    
    }
}
