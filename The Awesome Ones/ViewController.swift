//
//  ViewController.swift
//  The Awesome Ones
//
//  Created by SBAUser on 9/5/19.
//  Copyright © 2019 Kyle Moga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewer: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    
    var index = -1
    var newIndex = -1
    var randomStart = Int.random(in: 0...7)
    
    var students = ["Ethan",
                    "Braden",
                    "Kyle",
                    "Reece",
                    "Max",
                    "Jessica",
                    "Sophia",
                    "Jared"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func button(_ sender: UIButton) {
        
        if randomStart > students.count-1 {
            randomStart = 0
        }
        label.text = students[randomStart]
        viewer.image = UIImage(named: "img\(randomStart)")
        randomStart += 1
    }
    
}

