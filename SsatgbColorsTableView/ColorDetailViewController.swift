//
//  ColorDetailViewController.swift
//  SsatgbColorsTableView
//
//  Created by Sharoze Amir on 10/19/18.
//  Copyright © 2018 Sharoze Amir. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    @IBOutlet weak var colorNameLabel: UILabel!
    var color: Color?
    
    
    override func viewDidLoad() {
     
        super.viewDidLoad()
        
        colorNameLabel.text = color?.name
        self.view.backgroundColor = color?.UIColor
        self.title = color?.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
