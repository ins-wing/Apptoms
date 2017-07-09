//
//  Extensions_Beryllium.swift
//  Beryllium
//
//  Created by WinG@Apptoms on 3/7/2017.
//  Copyright (c) 2017 Apptoms. All rights reserved.
//

import Foundation
import SwiftMsgPack

public extension Data {
	public var msgpack: [AnyHashable:Any]? {
		do {
			let object = try self.unpack()
			return object as? [AnyHashable:Any]
		}
		catch {
			return nil
		}
	}
	
	public init?(msgpack: [AnyHashable:Any]) {
		var data = Data()
		do {
			try data.pack(msgpack)
			self = data
		}
		catch {
			return nil
		}
	}
}

