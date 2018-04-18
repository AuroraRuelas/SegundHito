//
//  VCColeccion.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 17/4/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//

import UIKit

class VCColeccion: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet var colPrincipal:UICollectionView?
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5;
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CVCell=collectionView.dequeueReusableCell(withReuseIdentifier: "celdaColeccion", for: indexPath) as! CVCell
        
        if(indexPath.row==0){
            
            cell.lblColl?.text="Deadpool"
            cell.imageC?.image=#imageLiteral(resourceName: "deadpool.png")
        }
        else if(indexPath.row==1){
            cell.lblColl?.text="Colossus"
            cell.imageC?.image=#imageLiteral(resourceName: "colosus.png")
        }
        else if(indexPath.row==2){
            cell.lblColl?.text="negasonic"
            cell.imageC?.image=#imageLiteral(resourceName: "negasonic.jpg")
        }
        else if(indexPath.row==4){
            cell.lblColl?.text="Pool"
            cell.imageC?.image=#imageLiteral(resourceName: "good.jpg")
        }
        return cell
        
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
