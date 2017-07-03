//
//  HydrogenStringViewController.swift
//  Hydrongen Demo
//
//  Created by WinG@Apptoms on 07/01/2017.
//  Copyright (c) 2017 Apptoms. All rights reserved.
//

import UIKit
import Apptoms

class HydrogenStringViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

		print(Random.string(character:Random.getCharacters(.Uppercase, .Lowercase, .Number), length:10))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	
}
