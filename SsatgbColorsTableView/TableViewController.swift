//
//  ViewController.swift
//  SsatgbColorsTableView
//
//  Created by Sharoze Amir on 9/28/18.
//  Copyright © 2018 Sharoze Amir. All rights reserved.
//

import UIKit

struct CellStruct {
    var name: String
    var data: String
}

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableColorList: UITableView!
    var dataCell = [CellStruct]()
    
   
    @IBOutlet weak var colorsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        if dataCell.count == 0{
        
            self.dataCell = [CellStruct(name: "11/1/2018", data:"Test")]
            
        }
        
        tableColorList.delegate = self
        tableColorList.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   

    
    func numberOfSectInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataCell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath as IndexPath) as! ColorTableViewCell
        
        cell.ColorLabel?.text = dataCell[indexPath.row].name
        cell.selectionStyle = .none 
        return cell
    }
    
  
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController{
            
            if segue.identifier == "newPage" {
                
                dataCell.append(CellStruct(name: "", data: ""))
                destination.datas = dataCell
                destination.index = dataCell.count - 1
                
            }
                
            else{
                if let row = colorsTableView.indexPathForSelectedRow?.row{
                    destination.datas = dataCell
                    destination.index = row
            
            
                
                
            }
            
            
         }
      }
    }

}

