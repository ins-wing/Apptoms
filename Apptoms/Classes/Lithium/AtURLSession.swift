//
//  AtURLSession.swift
//  Lithium
//
//  Created by WinG@Apptoms on 3/7/2017.
//  Copyright (c) 2017 Apptoms. All rights reserved.
//

import Foundation

public class AtURLSession {
	public static let shared: AtURLSession = AtURLSession()
	
	public enum ConnectionType {
		case Normal
		case RestAPI
		case Image
	}
	public enum CacheType {
		case None
		case New(Int, Int)
		case Shared(URLCache?)
	}
	
	private lazy var sessions = [String:URLSession]()
	
	private func getURLSessionConfiguration(connection: ConnectionType, cache: CacheType) -> URLSessionConfiguration {
		let config = URLSessionConfiguration()
		switch connection {
		case .Normal:
			config.requestCachePolicy = .reloadRevalidatingCacheData
		case .RestAPI:
			config.requestCachePolicy = .reloadIgnoringCacheData
		case .Image:
			config.requestCachePolicy = .returnCacheDataElseLoad
		}
		
		switch cache {
		case .New(let memoryCapacity, let diskCapacity):
			config.urlCache = getURLCache(memoryCapacity: memoryCapacity, diskCapacity: diskCapacity)
		case .Shared(var cache):
			if (cache == nil) {
				cache = URLCache.shared
			}
			config.urlCache = cache
		default:
			break
		}
		
		return config
	}
	
	private func getURLCache(memoryCapacity: Int, diskCapacity: Int) -> URLCache {
		let cache = URLCache(memoryCapacity: memoryCapacity, diskCapacity: diskCapacity, diskPath: Random.string(character: Random.getCharacters(.Lowercase, .Uppercase, .Number), length: 10))
		return cache
	}
	
	deinit {
		
	}
}
