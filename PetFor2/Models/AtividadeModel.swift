//
//  Atividade.swift
//  Second Project
//
//  Created by Lucas Migge de Barros on 18/05/22.
//

import Foundation

struct Atividade {
    let nome: String
    let frequencia: Int
    let distribuicao: Float
    var status : Bool = false
    
    var numeroAtividadesAzul : Int {
        let numeroFrequenciaFloat = Float(self.frequencia)
        let numeroAzul = round(numeroFrequenciaFloat * self.distribuicao)
        return Int(numeroAzul)
    }
    var numeroAtividadeLaranja : Int {
        let numeroFrequenciaFloat = Float(self.frequencia)
        let numeroAzul = Int(round(numeroFrequenciaFloat * self.distribuicao))
        let numeroLaranja = self.frequencia - numeroAzul
        return Int(numeroLaranja)
    }

    
    mutating func updateStatus(conluida : Bool) {
        self.status = conluida
    }
    
//    init(nome : String, frequencia : Int, distribuicao : Float) {
//        self.nome = nome
//        self.frequencia = frequencia
//        self.distribuicao = distribuicao
//    }
//    
}

