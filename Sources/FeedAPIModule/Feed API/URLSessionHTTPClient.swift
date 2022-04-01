//
//  URLSessionHTTPClient.swift
//  SPMDemo
//
//  Created by Ravi Kiran HR on 20/03/22.
//

import Foundation

public class URLSessionHTTPClient: HTTPClient {
    let session: URLSession
    
    public init (session: URLSession = URLSession.shared) {
        self.session = session
    }
    
    public func get(from url: URL, completion: @escaping (APIResult) -> Void) {
        session.dataTask(with: url) { data, response, errro in
            if let errro = errro {
                completion(.failure(errro))
            }
            else if let data = data, let response = response as? HTTPURLResponse {
                completion(.success((data, response)))
            }
        }.resume()
    }
}
