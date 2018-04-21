//
//  Models.swift
//  HoffelDataScript
//
//  Created by José Guilherme de Lima Freitas on 21/04/2018.
//  Copyright © 2018 JG. All rights reserved.
//

import Foundation

struct Atleta: Codable {
    var nome: String
    var slug: String
    var apelido: String
    var foto: URL?
    var atleta_id: Int
    var rodada_id: Int
    var clube_id: Int
    var posicao_id: Int
    var status_id: Int
    var pontos_num: Double
    var preco_num: Double
    var variacao_num: Double
    var media_num: Double
    var jogos_num: Int
}

struct Atletas: Codable {
    var atletas: [Atleta]
}
