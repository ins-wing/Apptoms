//
//  ViewController.swift
//  Apptoms Demo
//
//  Created by WinG@Apptoms on 07/01/2017.
//  Copyright (c) 2017 Apptoms. All rights reserved.
//

import UIKit
import Apptoms

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

		//print("1234567890".sha1?.hex ?? "")
		
		let data = Data(hex: "0x123ABC7e")
		print(data?.hex)
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

