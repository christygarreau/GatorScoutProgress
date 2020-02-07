//
//  ViewController.swift
//  Input Stepper
//
//  Created by Christy Garreau on 2/7/20.
//  Copyright © 2020 Christy Garreau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Value: UILabel!
    @IBOutlet weak var AddBotton: UIButton!
    @IBOutlet weak var LowerButton: UIButton!
    var value = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Value.text = value.description;
        LowerButton.alpha = 0.5;
        LowerButton.isEnabled = false;
    }

    @IBAction func AddButton(_ sender: Any) {
        value+=1;
        Value.text = value.description;
        if(value > 0){
            LowerButton.alpha = 1;
            LowerButton.isEnabled = true;
        }
    }
    
    @IBAction func LowerButton(_ sender: Any) {
        if(value>0){
            value-=1;
            Value.text = value.description;
        }
        if(value<1){
            LowerButton.alpha = 0.5;
            LowerButton.isEnabled = false;
        }
    }
}

