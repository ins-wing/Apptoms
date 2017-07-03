//
//  Random.swift
//  Hydrogen
//
//  Created by WinG@Apptoms on 3/7/2017.
//  Copyright (c) 2017 Apptoms. All rights reserved.
//

import Foundation

public class Random {
	public enum RandomSet: String {
		case Lowercase		= "abcdefghijklmnopqrstuvwxyz"
		case Uppercase		= "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
		case Number			= "1234567890"
	}
	
	public static func getCharacters(_ characters: RandomSet...) -> String {
		var contentString = ""
		
		for character in characters {
			switch character {
			case .Uppercase:
				contentString += RandomSet.Uppercase.rawValue
			case .Lowercase:
				contentString += RandomSet.Lowercase.rawValue
			case .Number:
				contentString += RandomSet.Number.rawValue
			}
		}
		
		return contentString
	}
	
	public static func string(character: String, length: Int) -> String {
		let characterCount = UInt32(character.characters.count)
		if (characterCount == 0) {
			return ""
		}
		else {
			var randomString = ""
			
			for _ in 1...length {
				let randomIndex = Int(arc4random_uniform(characterCount))
				let a = character.index(character.startIndex, offsetBy: randomIndex)
				randomString += String(character[a])
			}
			
			return randomString
		}
	}
}
