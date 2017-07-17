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
	
	public var sha224: Data? {
		let hashData = data(using:.utf8)!
		var digest = Data(count: Int(CC_SHA224_DIGEST_LENGTH))
		
		_ = digest.withUnsafeMutableBytes {digestBytes in
			hashData.withUnsafeBytes {messageBytes in
				CC_SHA224(messageBytes, CC_LONG(hashData.count), digestBytes)
			}
		}
		
		return digest
	}
	
	public var sha256: Data? {
		let hashData = data(using:.utf8)!
		var digest = Data(count: Int(CC_SHA256_DIGEST_LENGTH))
		
		_ = digest.withUnsafeMutableBytes {digestBytes in
			hashData.withUnsafeBytes {messageBytes in
				CC_SHA256(messageBytes, CC_LONG(hashData.count), digestBytes)
			}
		}
		
		return digest
	}
	
	public var sha384: Data? {
		let hashData = data(using:.utf8)!
		var digest = Data(count: Int(CC_SHA384_DIGEST_LENGTH))
		
		_ = digest.withUnsafeMutableBytes {digestBytes in
			hashData.withUnsafeBytes {messageBytes in
				CC_SHA384(messageBytes, CC_LONG(hashData.count), digestBytes)
			}
		}
		
		return digest
	}
	
	public var sha512: Data? {
		let hashData = data(using:.utf8)!
		var digest = Data(count: Int(CC_SHA512_DIGEST_LENGTH))
		
		_ = digest.withUnsafeMutableBytes {digestBytes in
			hashData.withUnsafeBytes {messageBytes in
				CC_SHA512(messageBytes, CC_LONG(hashData.count), digestBytes)
			}
		}
		
		return digest
	}
}

public extension Data {
	public init?(hex: String) {
		var contentString = hex.lowercased().replacingOccurrences(of: "0x", with: "")
		var contentData = Data(capacity: contentString.characters.count / 2)
		
		let regex = try! NSRegularExpression(pattern: "[0-9a-f]{1,2}", options: .caseInsensitive)
		regex.enumerateMatches(in: contentString, range: NSMakeRange(0, contentString.utf16.count)) { match, flags, stop in
			let byteString = (contentString as NSString).substring(with: match!.range)
			var num = UInt8(byteString, radix: 16)!
			contentData.append(&num, count: 1)
		}
		
		if (contentData.count > 0) {
			self = contentData
		}
		else {
			return nil
		}
	}
	
	public var hex: String {
		get {
			return map { String(format: "%02hhx", $0) }.joined()
		}
	}
}
