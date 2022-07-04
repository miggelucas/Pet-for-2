//
//  AtividadeCell.swift
//  Second Project
//
//  Created by Lucas Migge de Barros on 18/05/22.
//

import Foundation
import UIKit


class AtividadeCell: UITableViewCell {
    

    
    @IBOutlet weak var botaoEsquerdo: UIButton!
    // deve mudar a cor do botão para azul
    // deve mudar a cor do background text para azul
    // deve avancar na barra de progresso do azul
    // deve avanar na barra de progresso do tipo de atividade
    
    @IBOutlet weak var botaoDireito: UIButton!
    // a mesma coisa, so que para o laranja
    // apenas um botão deve poder ser "ativado" pra cada atividade
    //
    
    @IBOutlet weak var descicaoAtividade : UILabel!
    // deve receber a atividade
    

    // O botao precisa ter uma cor diferente caso a atividade ja tenha sido realizada
//    func checkaAtividadeEmAberto() {
//        let homePageVC = tabBarController?.viewControllers?[1] as! HomePageViewController
//
//        atividadePool = homePageVC.atividadeManager.atividadesPool
//    }
    
    
}

