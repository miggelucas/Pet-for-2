//
//  Atividade.swift
//  Second Project
//
//  Created by Lucas Migge de Barros on 18/05/22.
//

import Foundation

class Atividade {
    let nome: String
    let tipo: String
    let diasDaSemana: String
    let frequencia: Int
    let distribuicao: Float
 
    
    
    init(nome: String,tipo: String, diasDaSemana: String, frequencia: Int, distribuicao: Float, numeroTotalDeAtividades: Int) {
        self.nome = nome
        self.tipo = tipo
        self.diasDaSemana = diasDaSemana
        self.frequencia = frequencia
        self.distribuicao = distribuicao
    }
    
    func calculaTotalDeAtividade(diasDaSemana: String, frequencia: Int) -> Int{
        let numeroDeDias: Int = diasDaSemana.count
        let frequencia = frequencia
        
        return numeroDeDias * frequencia
    }

    func calculaAtivadesAzul(totalAtividades: Int, distribuicao: Float) -> Int {
        let totalAtividades = Float(calculaTotalDeAtividade(diasDaSemana: self.diasDaSemana, frequencia: self.frequencia))
        let distribuicao = self.distribuicao
        let numeroAtividadesAzul = Double(totalAtividades * distribuicao)
        
        return Int(round(numeroAtividadesAzul))
    }

    func calculaAtividadesLaranja(totalAtividades: Int, distribuicao: Float) -> Int {
        let totalAtividades = Float(calculaTotalDeAtividade(diasDaSemana: self.diasDaSemana, frequencia: self.frequencia))
        // a sobra do valor do slider corresponde ao laranja
        let distribuicao = 1 - self.distribuicao
        let numeroAtividadesAzul = Double(totalAtividades * distribuicao)
        
        return Int(round(numeroAtividadesAzul))
    }
}

/*\

 atividades = [
    task(jadasd)
 
 
 
 ]
 
 
 
 */
