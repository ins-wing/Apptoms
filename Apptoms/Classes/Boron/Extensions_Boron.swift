//
//  Extensions_Boron.swift
//  Boron
//
//  Created by WinG@Apptoms on 9/7/2017.
//  Copyright (c) 2017 Apptoms. All rights reserved.
//

import Foundation
import CommonCrypto

public extension String {
	public var md5: Data? {
		get {
			let hashData = data(using:.utf8)!
			var digest = Data(count: Int(CC_MD5_DIGEST_LENGTH))

			_ = digest.withUnsafeMutableBytes {digestBytes in
				hashData.withUnsafeBytes {messageBytes in
					CC_MD5(messageBytes, CC_LONG(hashData.count), digestBytes)
				}
			}

			return digest
		}
	}

	public var sha1: Data? {
		let hashData = data(using:.utf8)!
		var digest = Data(count: Int(CC_SHA1_DIGEST_LENGTH))

		_ = digest.withUnsafeMutableBytes {digestBytes in
			hashData.withUnsafeBytes {messageBytes in
				CC_SHA1(messageBytes, CC_LONG(hashData.count), digestBytes)
			}
		}

		return digest
	}
}

public extension Data {
	public var hex: String {
		get {
			return map { String(format: "%02hhx", $0) }.joined()
		}
	}
}
