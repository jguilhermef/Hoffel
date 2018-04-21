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
    var foto: String?
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
    var scout: Scout
}

struct Atletas: Codable {
    var atletas: [Atleta]
}

//RB: Roubada de bola
//FC: Falta cometida
//GC: Gol contra
//CA: Cartão amarelo
//CV: Cartão vermelho
//SG: Jogo sem sofrer gol
//DD: Defesa difícil
//DP: Defesa de penalti
//GS: Gol sofrido
//FS: Falta sofrida
//PE: Passe errado
//A: Assistência
//FT: Finalização na trave
//FD: Finalização defendida
//FF: Finalização pra fora
//G: Gol
//I: Impedimento
//PP: Penalti perdido
struct Scout: Codable {
    var RB: Double?
    var FC: Double?
    var GC: Double?
    var CA: Double?
    var CV: Double?
    var SG: Double?
    var DD: Double?
    var DP: Double?
    var GS: Double?
    var FS: Double?
    var PE: Double?
    var A: Double?
    var FT: Double?
    var FD: Double?
    var FF: Double?
    var G: Double?
    var I: Double?
    var PP: Double?
}
