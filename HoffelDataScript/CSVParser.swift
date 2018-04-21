//
//  CSVParser.swift
//  HoffelDataScript
//
//  Created by José Guilherme de Lima Freitas on 21/04/2018.
//  Copyright © 2018 JG. All rights reserved.
//

import Foundation

class CSVParser {
    
    private var contentString = "Nome; Slug; Apelido; Foto; ID; Rodada; Clube ID; Posicao ID; Status ID; Pontos; Preco; Variacao; Media; Jogos\n"
    
    func parse(atletlas: [Atleta]) -> String {
        
        for atleta in atletlas.sorted(by: { $0.nome < $1.nome}) {
            add(field: atleta.nome)
            add(field: atleta.slug)
            add(field: atleta.apelido)
            add(field: atleta.foto ?? "")
            add(field: atleta.atleta_id.string)
            add(field: atleta.rodada_id.string)
            add(field: atleta.clube_id.string)
            add(field: atleta.posicao_id.string)
            add(field: atleta.status_id.string)
            add(field: atleta.pontos_num.string)
            add(field: atleta.preco_num.string)
            add(field: atleta.variacao_num.string)
            add(field: atleta.media_num.string)
            add(finalField: atleta.jogos_num.string)
            breakLine()
        }
        return contentString
    }
    
    private func add(field: String) {
        contentString += field + ";"
    }
    
    private func add(finalField: String) {
        contentString += finalField
    }
    
    private func breakLine() {
        contentString += "\n"
    }
}


extension Int {
    var string: String {
        return String(self)
    }
}

extension Double {
    var string: String {
        return String(self)
    }
}
