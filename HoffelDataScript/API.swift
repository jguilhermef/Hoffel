//
//  API.swift
//  HoffelDataScript
//
//  Created by José Guilherme de Lima Freitas on 21/04/2018.
//  Copyright © 2018 JG. All rights reserved.
//

import Foundation

protocol APIClient {
    func request(result: @escaping (Result<Data>) -> ())
}

enum APIError {
    case customError(Error)
    case invalidData
}

enum Result<Value> {
    case success(Value)
    case error(APIError)
}

class API: APIClient {
    
    private let baseUrl = "https://api.cartolafc.globo.com/atletas/mercado"
    
    func request(result: @escaping (Result<Data>) -> ()) {
        guard let url = URL(string: baseUrl) else {return}
        let task = URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                result(.error(.customError(error)))
                return
            }
            
            guard let data = data else {
                result(.error(.invalidData))
                return
            }
            
            result(.success(data))
        }
        
        task.resume()
    }
}
