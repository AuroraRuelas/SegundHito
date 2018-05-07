//
//  VCColeccion.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 17/4/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//

import UIKit

class VCColeccion: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
  
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("Consulta de filas para pintar")
        return self.arNombre.count;
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CVCell = collectionView.dequeueReusableCell(withReuseIdentifier: "celdaColeccion", for: indexPath) as! CVCell
        cell.lblColl?.text = self.arNombre[indexPath.row].sNombre
        cell.mostrarImagenes(uri: self.arNombre[indexPath.row].iImagen!)
        return cell
    }
  
 
    
    @IBOutlet var colPrincipal:UICollectionView?
       var arNombre:[ColCollec] = []
   
    
    
    override func viewDidLoad() {
     
        super.viewDidLoad()
        
        DataHolder.sharedInstance.firestoreDB?.collection("Colecciones").addSnapshotListener { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                self.arNombre=[]
                for document in querySnapshot!.documents {
                    let nombre:ColCollec = ColCollec()
//                    var coleccion:ColCollec = ColCollec()
//                    coleccion.setMap(valores: document.data())
                    nombre.sID=document.documentID
                    nombre.setMap(valores: document.data())
                    self.arNombre.append(nombre)
                    print("\(document.documentID) => \(document.data())")
                }
                print("--->",self.arNombre.count)
                self.colPrincipal?.reloadData()
                
            }
            }
        
        }
   
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell:CVCell = collectionView.dequeueReusableCell(withReuseIdentifier: "celdaColeccion", for: indexPath) as! CVCell
//        cell.lblColl?.text = self.arNombre[indexPath.row].sNombre
//        return cell
//    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("He seleccionado" , indexPath.row)

    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("He Deseleccionado" , indexPath.row)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Do any additional setup after loading the view.
    }


        // Dispose of any resources that can be recreated.
    
    

    
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell:CVCell=collectionView.dequeueReusableCell(withReuseIdentifier: "celdaColeccion", for: indexPath) as! CVCell
//
//        if(indexPath.row==0){
//
//            cell.lblColl?.text="Deadpool"
//            cell.imageC?.image=#imageLiteral(resourceName: "deadpool.png")
//        }
//        else if(indexPath.row==1){
//            cell.lblColl?.text="Colossus"
//            cell.imageC?.image=#imageLiteral(resourceName: "colosus.png")
//        }
//        else if(indexPath.row==2){
//            cell.lblColl?.text="negasonic"
//            cell.imageC?.image=#imageLiteral(resourceName: "negasonic.jpg")
//        }
//        else if(indexPath.row==3){
//            cell.lblColl?.text="Taco"
//            cell.imageC?.image=#imageLiteral(resourceName: "tacodeadpool.jpg")
//        }
//        else if(indexPath.row==4){
//            cell.lblColl?.text="Pool"
//            cell.imageC?.image=#imageLiteral(resourceName: "good.jpg")
//        }
//        return cell
//
//    }
////

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
