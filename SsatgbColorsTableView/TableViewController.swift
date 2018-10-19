//
//  ViewController.swift
//  SsatgbColorsTableView
//
//  Created by Sharoze Amir on 9/28/18.
//  Copyright © 2018 Sharoze Amir. All rights reserved.
//

import UIKit

struct Color {
    var name: String
    var UIColor: UIColor
}

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableColorList: UITableView!
    var colors = [Color]()
    var newColor: String = ""
    
   
    @IBOutlet weak var colorsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
        
        colors = [Color(name: "Red", UIColor: UIColor.red), Color(name: "Orange", UIColor: UIColor.orange), Color(name: "Yellow", UIColor: UIColor.yellow), Color(name: "Green", UIColor: UIColor.green), Color(name: "Blue", UIColor: UIColor.blue), Color(name: "Purple", UIColor: UIColor.purple)]
        
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
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath as IndexPath) as! ColorTableViewCell
        
        cell.ColorLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].UIColor
        cell.selectionStyle = .none 
        return cell
    }
    
  
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
            let row = colorsTableView.indexPathForSelectedRow?.row{
            destination.color = colors[row]
        }
    }

}

