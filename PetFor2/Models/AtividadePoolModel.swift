//
//  AtividadePoolModel.swift
//  PetFor2
//
//  Created by Lucas Migge de Barros on 23/06/22.
//

import Foundation


struct AtividadePool {
    let nome : String
    var blue : Bool = false
    var orange : Bool = false
    
    mutating func atribuirAzul() {
        self.blue = true
    }
    
    mutating func atribuirLaranja() {
        self.orange = true
    }
    
    mutating func limparAtribuicoes() {
        self.orange = false
        self.blue = false
    }
}
