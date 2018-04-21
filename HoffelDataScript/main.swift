//
//  main.swift
//  HoffelDataScript
//
//  Created by José Guilherme de Lima Freitas on 21/04/2018.
//  Copyright © 2018 JG. All rights reserved.
//

import Foundation

let rodada: Int = 1

func main() {
    print("Make this!")
    let decoder = Decoder()
    decoder.market { (atletas) in
        let content = CSVParser().parse(atletlas: atletas)
        let csv = CSV(name: "Rodada\(rodada)", content: content)
        csv.save()
        print("Done")
    }
}

main()
dispatchMain()
