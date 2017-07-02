//
//  HydrogenColorViewController.swift
//  Hydrongen Demo
//
//  Created by WinG@Apptoms on 07/01/2017.
//  Copyright (c) 2017 Apptoms. All rights reserved.
//

import UIKit

class HydrogenColorViewController: UIViewController, UITextFieldDelegate {
	@IBOutlet weak var hexColorView: UIView!
	@IBOutlet weak var hexColorInput: UITextField!

	@IBOutlet weak var codeColorView: UIView!
	@IBOutlet weak var redCodeInput: UITextField!
	@IBOutlet weak var greenCodeInput: UITextField!
	@IBOutlet weak var blueCodeInput: UITextField!
	@IBOutlet weak var alphaCodeInput: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()

		if (textField.isEqual(hexColorInput)) {
			hexColorView.backgroundColor = UIColor(hex: hexColorInput.text!)
		}
		else {
			codeColorView.backgroundColor = UIColor(codeWithRed: CGFloat(Double(redCodeInput.text!) ?? 0), green: CGFloat(Double(greenCodeInput.text!) ?? 0), blue: CGFloat(Double(blueCodeInput.text!) ?? 0), alpha: CGFloat(Double(alphaCodeInput.text!) ?? 255))
		}

		return true
	}
}
