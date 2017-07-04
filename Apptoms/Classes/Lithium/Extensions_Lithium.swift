//
//  Extensions_Lithium.swift
//  Lithium
//
//  Created by WinG@Apptoms on 3/7/2017.
//  Copyright (c) 2017 Apptoms. All rights reserved.
//

import Foundation

public extension URLSession {
	public func asyncData(url: URL, complete: @escaping (Data?, URLResponse?, Error?) -> ()) {
		DispatchQueue.global(qos: .utility).async {
			let request = URLRequest(url: url)
			let task = self.dataTask(with: request) { data, response, error in
				complete(data, response, error)
			}
			
			task.resume()
		}
	}
	
	public func asyncJson(url: URL, complete: @escaping (Any?, URLResponse?, Error?) -> ()) {
		DispatchQueue.global(qos: .utility).async {
			let request = URLRequest(url: url)
			let task = self.dataTask(with: request) { data, response, error in
				let json = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)
				complete(json ?? nil, response, error)
			}
			
			task.resume()
		}
	}
}
