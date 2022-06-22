//
//  AtividadeManager.swift
//  PetFor2
//
//  Created by Lucas Migge de Barros on 21/06/22.
//

import Foundation

struct AtividadeManager {
    
    var atividades : [Atividade] = [
        Atividade(nome: "comida", frequencia: 2, distribuicao: 0.5),
        Atividade(nome: "Escovar pelos", frequencia: 2, distribuicao: 0.5)
    ]
    
    var atividadesPool : [Atividade] = [Atividade(nome: "teste", frequencia: 4, distribuicao: 0.5)]
    
    var scorePool = ScorePool()
    
    mutating func updateScoreTotalPool() {
        scorePool.totalBlue = 0
        scorePool.totalOrange = 0
        for atividade in atividades {
            scorePool.totalBlue += atividade.numeroAtividadesAzul
            print("azul para essa atividade \(atividade.numeroAtividadesAzul)")
            scorePool.totalOrange += atividade.numeroAtividadeLaranja
        }
    }
    
    mutating func updateAtividadesPool() {
        atividadesPool = [Atividade(nome: "teste", frequencia: 4, distribuicao: 0.5)]
        for atividade in atividades {
            let numberOfRepetitions = atividade.frequencia
            for _ in 1...numberOfRepetitions {
                atividadesPool.append(atividade)
            }
        }
    }
    
//    func calculaTotalDeAtividade(diasDaSemana: String, frequencia: Int) -> Int{
//        let numeroDeDias: Int = diasDaSemana.count
//        let frequencia = frequencia
//
//        return numeroDeDias * frequencia
//    }
    
    func getNumeroAzul(frequencia : Int, distribuicao : Float) -> Int {
        let numeroFrequenciaFloat = Float(frequencia)
        let numeroAzul = Int(round(numeroFrequenciaFloat * distribuicao))
        
        return Int(numeroAzul)
    }
    
    func getNumeroLaranja(frequencia : Int, distribuicao : Float) -> Int {
        let numeroFrequenciaFloat = Float(frequencia)
        let numeroAzul = Int(round(numeroFrequenciaFloat * distribuicao))
        let numeroLaranja = frequencia - numeroAzul
        return Int(numeroLaranja)
    }


}
