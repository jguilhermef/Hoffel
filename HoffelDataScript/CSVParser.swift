//
//  CSVParser.swift
//  HoffelDataScript
//
//  Created by José Guilherme de Lima Freitas on 21/04/2018.
//  Copyright © 2018 JG. All rights reserved.
//

import Foundation

class CSVParser {
    
    private var contentString = ""
    
    func parse(atletlas: [Atleta]) -> String {
        contentString = "Nome; Slug; Apelido; Foto; ID; Rodada; Clube ID; Posicao ID; Status ID; Pontos; Preco; Variacao; Media; Jogos\n"
        for atleta in atletlas.sorted(by: { $0.nome < $1.nome}) {
            add(field: atleta.atleta_id.string)
            add(field: atleta.nome)
            add(field: atleta.slug)
            add(field: atleta.apelido)
            add(field: atleta.foto ?? "")
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
    func parseScouts(atletas: [Atleta]) -> String {
        contentString = "ID; Nome; Apelido; RB; FC; GC; CA; CV; SG; DD; DP; GS; FS; PE; A; FT; FD; FF; G; I; PP\n"
        
        for atleta in atletas {
            add(field: atleta.atleta_id.string)
            add(field: atleta.nome)
            add(field: atleta.apelido)
            add(field: (atleta.scout.RB ?? 0).string)
            add(field: (atleta.scout.FC ?? 0).string)
            add(field: (atleta.scout.GC ?? 0).string)
            add(field: (atleta.scout.CA ?? 0).string)
            add(field: (atleta.scout.CV ?? 0).string)
            add(field: (atleta.scout.SG ?? 0).string)
            add(field: (atleta.scout.DD ?? 0).string)
            add(field: (atleta.scout.DP ?? 0).string)
            add(field: (atleta.scout.GS ?? 0).string)
            add(field: (atleta.scout.FS ?? 0).string)
            add(field: (atleta.scout.PE ?? 0).string)
            add(field: (atleta.scout.A ?? 0).string)
            add(field: (atleta.scout.FT ?? 0).string)
            add(field: (atleta.scout.FD ?? 0).string)
            add(field: (atleta.scout.FF ?? 0).string)
            add(field: (atleta.scout.G ?? 0).string)
            add(field: (atleta.scout.I ?? 0).string)
            add(finalField: (atleta.scout.PP ?? 0).string)
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
