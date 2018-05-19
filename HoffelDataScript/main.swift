//
//  main.swift
//  HoffelDataScript
//
//  Created by José Guilherme de Lima Freitas on 21/04/2018.
//  Copyright © 2018 JG. All rights reserved.
//

import Foundation

//Ultima rodada: 5
let rodada: Int = -1

func main() {
    print("Make this!")
    let decoder = Decoder()
    decoder.market { (atletas) in
       
        let parser = CSVParser()
        let atletasCSV = CSV(name: "Rodada\(rodada)", content: parser.parse(atletlas: atletas))
        let scoutsCSV = CSV(name: "Rodada\(rodada)Scouts", content: parser.parseScouts(atletas: atletas))
        
        atletasCSV.save()
        scoutsCSV.save()
        print("Done")
    }
}

main()
dispatchMain()
