//
//  ColorDetailViewController.swift
//  SsatgbColorsTableView
//
//  Created by Sharoze Amir on 10/19/18.
//  Copyright © 2018 Sharoze Amir. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var datas: [CellStruct]?
    var index: Int?
    
    
    @IBOutlet weak var colorNameLabel: UITextField!
    
    override func viewDidLoad() {
     
        super.viewDidLoad()
        
        colorNameLabel.text = datas?[index!].name
        textBox.text = datas?[index!].data
    }
    
    
    @IBOutlet weak var textBox: UITextView!
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? TableViewController{
            datas?[index!].name = colorNameLabel.text ?? ""
            datas?[index!].data = textBox.text ?? ""
            
            destination.dataCell = datas!
            
            
        }
    }
    
}
