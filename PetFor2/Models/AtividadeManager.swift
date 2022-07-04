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
    
    var atividadesPool : [AtividadePool] = [AtividadePool(nome: "teste")]
    
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
        atividadesPool = [AtividadePool(nome: "teste")]
        for atividade in atividades {
            let numberOfRepetitions = atividade.frequencia
            for _ in 1...numberOfRepetitions {
                let nomeDaAtividade = atividade.nome
                let novaAtividadePool = AtividadePool(nome: nomeDaAtividade)
                atividadesPool.append(novaAtividadePool)
            }
        }
    }
    
    // verifica se não foi concluída ainda
    func atividadeEmAberto(atividade : AtividadePool) -> Bool {
        if atividade.blue == false && atividade.orange == false {
            return true
        } else {
            return false
        }
    }
    
    func atividadeRealizadaPor(atividade : AtividadePool) -> String {
        if atividade.blue == true {
            return "azul"
        } else if atividade.orange == true {
            return "laranja"
        } else {
            return "deu ruim"
        }
    }
    
    mutating func computarAtividadeAzul(index : Int) {
        atividadesPool[index].atribuirAzul()
        scorePool.userScoreBlue += 1
    }
    
    mutating func descomputarAtividadeAzul(index : Int) {
        atividadesPool[index].limparAtribuicoes()
        scorePool.userScoreBlue -= 1
    }
    
    mutating func computarAtividadeLaranja(index : Int) {
        atividadesPool[index].atribuirLaranja()
        scorePool.userScoreOrange += 1
    }
    
    mutating func descomputarAtividadeLaranja(index : Int) {
        atividadesPool[index].limparAtribuicoes()
        scorePool.userScoreOrange -= 1
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
