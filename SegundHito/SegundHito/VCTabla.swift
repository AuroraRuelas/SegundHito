//
//  VCTabla.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 17/4/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//

import UIKit

class VCTabla: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TVCell = tableView.dequeueReusableCell(withIdentifier: "miCelda") as! TVCell
        if(indexPath.row==0){
        cell.labelNombre?.text="Chimichanga"
//        cell.imagen?.image=
        }
        else if(indexPath.row==1){
             cell.labelNombre?.text="Piñata"
            //        cell.imagen?.image=
        }
        else if(indexPath.row==2){
             cell.labelNombre?.text="Katanas"
            //        cell.imagen?.image=
        }
        else if(indexPath.row==3){
             cell.labelNombre?.text="Dead"
            //        cell.imagen?.image=
        }
        else if(indexPath.row==4){
             cell.labelNombre?.text="Pool"
            //        cell.imagen?.image=
        }
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("He seleccionado" , indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("He Deseleccionado" , indexPath.row)
    }
    
    
    
    @IBOutlet var miTabla:UITableView?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
