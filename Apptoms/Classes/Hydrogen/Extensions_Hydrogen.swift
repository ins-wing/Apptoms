//
//  Extensions_Hydrogen.swift
//  Hydrogen
//
//  Created by WinG@Apptoms on 1/7/2017.
//  Copyright (c) 2017 Apptoms. All rights reserved.
//

import Foundation

public extension UIColor {
	public convenience init(hex: String) {
		var color: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

		if (color.hasPrefix("#")) {
			color.remove(at: color.startIndex)
		}

		if ((color.characters.count) != 6 && (color.characters.count) != 8) {
			self.init(white: 0, alpha: 0)
		}
		else {
			var rgb: UInt32 = 0
			Scanner(string: color).scanHexInt32(&rgb)

			if ((color.characters.count) == 6) {
				self.init(codeWithRed: CGFloat((rgb & 0xFF0000) >> 16), green: CGFloat((rgb & 0x00FF00) >> 8), blue: CGFloat(rgb & 0x0000FF))
			}
			else {
				self.init(codeWithRed: CGFloat((rgb & 0xFF000000) >> 24), green: CGFloat((rgb & 0x00FF0000) >> 16), blue: CGFloat((rgb & 0x0000FF00) >> 8), alpha: CGFloat(rgb & 0x000000FF))
			}
		}
	}

	public convenience init(codeWithRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 255.0) {
		self.init(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: alpha / 255.0)
	}
	
	public static var placerHolder: UIColor {
		get {
			return UIColor(hex: "C7C7CD")
		}
	}
}

public extension String {
	public var json: Any? {
		let object = try? JSONSerialization.jsonObject(with: self.data(using: .utf8)!, options: .allowFragments)
		return object
	}

	public init?(json: Any) {
		do {
			let data = try JSONSerialization.data(withJSONObject: json, options: .init(rawValue: 0))
			self = String(data: data, encoding: .utf8)!
		}
		catch {
			return nil
		}
	}
}
