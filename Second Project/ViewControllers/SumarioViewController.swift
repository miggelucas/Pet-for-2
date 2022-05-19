//
//  SumarioViewController.swift
//  Second Project
//
//  Created by Lucas Migge de Barros on 18/05/22.
//

import UIKit

class SumarioViewController: UIViewController {

    @IBOutlet weak var progressBarAzul: UIProgressView!
    @IBOutlet weak var progressBarLaranja: UIProgressView!
    
    @IBOutlet weak var progressBarAlimentacao: UIProgressView!
    @IBOutlet weak var progressBarLazer: UIProgressView!
    @IBOutlet weak var progressBarCuidado: UIProgressView!
    @IBOutlet weak var progressBarHigiene: UIProgressView!
    @IBOutlet weak var progressBarOutros: UIProgressView!
    
    
    
    
    func calculaProgresBar(numeroAtividadesConcluidas: Int,
                           numeroTotalDeAtividades: Int) -> Double {
        var progresso: Double
        progresso = Double(numeroTotalDeAtividades / numeroAtividadesConcluidas)
        return progresso
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let homePageViewController = tabBarController?.viewControllers![1] as! HomePageViewController
    
        // progressBarAzul.progress = novo valor
        
        var totalAtividades: Int
        var totalAtividadesAzul : Int
        var totalAtividadesLaranja: Int
        
//        for atividade in // homePageViewController.atividades {
//            atividade.
  //      }
        
        
    }
/*
    func calculaAtivadesAzul(totalAtividades: Int, distribuicao: Float) -> Int {
        let totalAtividades = Float(calculaTotalDeAtividade(diasDaSemana: self.diasDaSemana, frequencia: self.frequencia))
        let distribuicao = self.distribuicao
        let numeroAtividadesAzul = Double(totalAtividades * distribuicao)
        
        return Int(round(numeroAtividadesAzul))
    }

  */
    
    

    @IBAction func recomeçaSemana(_ sender: Any) {
        // deve limpar todos as entradas de atividades
        // deve resetar todas as barras de progresso
        
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
