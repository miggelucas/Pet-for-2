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
    
    func updateProgressBar() {
        let homeVC = tabBarController?.viewControllers?[1] as! HomePageViewController
        
        let atividadesManager = homeVC.atividadeManager
        
        let totalProgressBarblue = atividadesManager.scorePool.totalBlue
        let totalProgressBarOrange = atividadesManager.scorePool.totalOrange

        let currentProgressBlue = atividadesManager.scorePool.userScoreBlue
        let currentProgressOrange = atividadesManager.scorePool.userScoreOrange
        
        print("total blue \(totalProgressBarblue)")
        print("score blue \(currentProgressBlue)")
        print("Progress \(Float(currentProgressBlue) / Float(totalProgressBarblue))")
        
        progressBarAzul.progress = Float(currentProgressBlue) / Float(totalProgressBarblue)
        progressBarLaranja.progress = Float(currentProgressOrange) / Float(totalProgressBarOrange)


    }
    
//    func calculaProgresBar(numeroAtividadesConcluidas: Int,
//                           numeroTotalDeAtividades: Int) -> Double {
//        var progresso: Double
//        progresso = Double(numeroTotalDeAtividades / numeroAtividadesConcluidas)
//        return progresso
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateProgressBar()
        
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
