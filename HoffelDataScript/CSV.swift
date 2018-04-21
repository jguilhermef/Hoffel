//
//  CSV.swift
//  HoffelDataScript
//
//  Created by José Guilherme de Lima Freitas on 21/04/2018.
//  Copyright © 2018 JG. All rights reserved.
//

import Foundation

class CSV {
    
    private let name: String
    private var content: String
    
    init(name: String, content: String = "") {
        self.name = name + ".csv"
        self.content = content
    }
    
    func add(content: String) {
        self.content += content
    }
    
    func save() {
        let myPath = "/Users/Punisher/Desktop/HoffelDataScript/CSVs/Rodada\(rodada)"
        let path = URL(fileURLWithPath: myPath).appendingPathComponent(name)
        do {
            try content.write(to: path, atomically: true, encoding: .utf8)
        } catch {
            print("Failed to create file: \(error)")
        }
    }
}
