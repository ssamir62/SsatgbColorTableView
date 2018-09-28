//
//  ViewController.swift
//  SsatgbColorsTableView
//
//  Created by Sharoze Amir on 9/28/18.
//  Copyright © 2018 Sharoze Amir. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableColorList: UITableView!
    var colors = [String]()
    var newColor: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
        
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
        
        cell.ColorLabel?.text = colors[indexPath.row]
        
        return cell
    }

}

