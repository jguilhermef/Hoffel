//
//  Decoder.swift
//  HoffelDataScript
//
//  Created by José Guilherme de Lima Freitas on 21/04/2018.
//  Copyright © 2018 JG. All rights reserved.
//

import Foundation

class Decoder {
    let api: APIClient = API()
    
    func market(result: @escaping ([Atleta]) -> ()) {
        api.request { (result) in
            switch result {
            case .success(let data):
                do{
                    let atletas = try JSONDecoder().decode(Atletas.self, from: data)
                    result(atletas.atletas)
                } catch {
                    print("Error on decoding: \(error)")
                }
                
            case .error(let error):
                switch error {
                case .customError(let error):
                    print(error)
                case .invalidData:
                    print("Invalid data received from the api")
                }
            }
        }
    }
}
