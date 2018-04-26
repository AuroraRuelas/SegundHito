//
//  VCTabla.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 17/4/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//

import UIKit

class VCTabla: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var miTabla:UITableView?
    var arNombre:[ColList] = []
    override func viewDidLoad() {
        super.viewDidLoad()
//        DataHolder.sharedInstance.descargarColeccionListas()
//        func DHDdescargarColeccionListas(blFin: Bool){
//
//        }
        DataHolder.sharedInstance.firestoreDB?.collection("Listas").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    let nombre:ColList = ColList()
                    nombre.sID=document.documentID
                    nombre.setMap(valores: document.data())
                    self.arNombre.append(nombre)
                    print("\(document.documentID) => \(document.data())")
                }
                print("--->",self.arNombre.count)
                self.miTabla?.reloadData()
            }
        }
        
        
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("Consulta de filas para pintar")
        return self.arNombre.count;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell:TVCell = tableView.dequeueReusableCell(withIdentifier: "miCelda") as! TVCell
        cell.labelNombre?.text = self.arNombre[indexPath.row].sNombre
//        if(indexPath.row==0){
//        cell.labelNombre?.text="Chimichanga"
//        cell.imagen?.image=#imageLiteral(resourceName: "chimichanga.jpg")
//        }
//        else if(indexPath.row==1){
//             cell.labelNombre?.text="Piñata"
//                    cell.imagen?.image=#imageLiteral(resourceName: "Pinata.jpg")
//        }
//        else if(indexPath.row==2){
//             cell.labelNombre?.text="Katanas"
//                    cell.imagen?.image=#imageLiteral(resourceName: "katanas.png")
//        }
//        else if(indexPath.row==3){
//             cell.labelNombre?.text="Dead"
//                    cell.imagen?.image=#imageLiteral(resourceName: "deasd.png")
//        }
//        else if(indexPath.row==4){
//             cell.labelNombre?.text="Pool"
//                    cell.imagen?.image=#imageLiteral(resourceName: "pool.png")
//        }
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("He seleccionado" , indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("He Deseleccionado" , indexPath.row)
    }
    
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
     
        // Do any additional setup after loading the view.
    }


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


