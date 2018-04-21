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
    
    func market() {
        api.request { (result) in
            switch result {
            case .success(let data):
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                    print(json)
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
