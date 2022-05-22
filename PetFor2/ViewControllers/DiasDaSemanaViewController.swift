//
//  DiasDaSemanaViewController.swift
//  Second Project
//
//  Created by Lucas Migge de Barros on 19/05/22.
//

import UIKit

class DiasDaSemanaViewController: UIViewController {
    
    // switch para cada dia da semana
    @IBOutlet weak var switchSegunda: UISwitch!
    @IBOutlet weak var switchTerca: UISwitch!
    @IBOutlet weak var switchQuarta: UISwitch!
    @IBOutlet weak var switchQuinta: UISwitch!
    @IBOutlet weak var switchSexta: UISwitch!
    @IBOutlet weak var switchSabado: UISwitch!
    @IBOutlet weak var switchDomingo: UISwitch!
    
    
    // lista de strings para cada dia da semana
    let diasDaSemana : [String] = ["Segunda", "Terca", "Quarta",
                                   "Quinta", "Sexta", "Sabado", "Domingo"]
    
    // guarda os itens da lista anterior que forem ativados
    var diasDaSemanaAtivados : [String] = []
    
    func verificaDiasAtivados() {
        let listaDeDias = [switchSegunda.isOn, switchTerca.isOn, switchQuarta.isOn, switchQuinta.isOn, switchSexta.isOn, switchSabado.isOn, switchDomingo.isOn]
        
        for i in 1 ... diasDaSemana.count {
            if listaDeDias[i - 1] == true {
                diasDaSemanaAtivados.append(diasDaSemana[i - 1])
                }
            
        }
    }
    
    @IBOutlet weak var botaoVoltar: UINavigationItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


    }

