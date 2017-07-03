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
	
	public subscript(_ label: String) -> URLSession? {
		return sessions[label]
	}
	
	private lazy var sessions = [String:URLSession]()
	
	private func getURLSessionConfiguration(connection: ConnectionType, cache: CacheType) -> URLSessionConfiguration {
		let config = URLSessionConfiguration.default
		switch connection {
		case .Normal:
			config.requestCachePolicy = .reloadRevalidatingCacheData
		case .RestAPI:
			config.requestCachePolicy = .reloadIgnoringCacheData
		case .Image:
			config.requestCachePolicy = .returnCacheDataElseLoad
		}
		
		switch cache {
		case .None:
			config.urlCache = nil
		case .New(let memoryCapacity, let diskCapacity):
			config.urlCache = getURLCache(memoryCapacity: memoryCapacity, diskCapacity: diskCapacity)
		case .Shared(let cache):
			config.urlCache = cache ?? URLCache.shared
		}
		
		return config
	}
	
	private func getURLCache(memoryCapacity: Int, diskCapacity: Int) -> URLCache {
		let cache = URLCache(memoryCapacity: memoryCapacity*1024*1024, diskCapacity: diskCapacity*1024*1024, diskPath: Random.string(character: Random.getCharacters(.Lowercase, .Uppercase, .Number), length: 10))
		return cache
	}
	
	public func createURLSession(label: String, connection: ConnectionType, cache: CacheType) -> URLSession {
		if (label.characters.count > 0) {
			var session = sessions[label]
			if (session != nil) {
				session?.finishTasksAndInvalidate()
				sessions[label] = nil
			}
			
			session = URLSession(configuration: getURLSessionConfiguration(connection: connection, cache: cache))
			sessions[label] = session
			
			return session!
		}
		else {
			return URLSession.shared
		}
	}
	
	public func clearURLSessionCache(label: String) {
		sessions[label]?.configuration.urlCache?.removeAllCachedResponses()
	}
	
	deinit {
		for session in sessions.values {
			session.configuration.urlCache?.removeAllCachedResponses()
		}
	}
}
