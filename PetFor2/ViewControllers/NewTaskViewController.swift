//
//  NewTaskViewController.swift
//  Second Project
//
//  Created by Lucas Migge de Barros on 16/05/22.
//

import UIKit

class NovaAtividadeViewController: UIViewController {
    
    @IBOutlet weak var NomeAtividade: UITextField!
    @IBOutlet weak var numeroFrequencia: UILabel!
    @IBOutlet weak var numeroTotalDeAtividades: UILabel!
    @IBOutlet weak var sliderDistribuicao: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var numeroAtividadesAzul: UILabel!
    @IBOutlet weak var numeroAtividadesLaranja: UILabel!
    
    
    let atividadeManager = AtividadeManager()
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        numeroFrequencia.text = String(Int(sender.value))
        updateDistribuicao()
    }
    
    @IBAction func SliderPressed(_ sender: UISlider) {
        updateDistribuicao()
    }
    
    @IBAction func limpaEntrada() {
    }
    
    func updateDistribuicao() {
        if let numeroFrequenciaInt = Int(numeroFrequencia.text!) {
            let numeroAzulString = String(atividadeManager.getNumeroAzul(frequencia : numeroFrequenciaInt , distribuicao: sliderDistribuicao.value))
            let numeroLaranjaString = String(atividadeManager.getNumeroLaranja(frequencia: numeroFrequenciaInt , distribuicao: sliderDistribuicao.value))
            
            numeroAtividadesAzul.text = numeroAzulString
            numeroAtividadesLaranja.text = numeroLaranjaString
            
        }

    }
    
    @IBAction func registrar() {
        let homeVC = tabBarController?.viewControllers?[1] as! HomePageViewController
        
        
        if let nomeAtividadeSring = NomeAtividade.text {
            let frequenciaInt = Int(numeroFrequencia.text!)!
            let novaAtividade = Atividade(nome: nomeAtividadeSring, frequencia: frequenciaInt, distribuicao: sliderDistribuicao.value)
            homeVC.atividadeManager.atividades.append(novaAtividade)
            
//            homeVC.atividadeManager.scorePool.userScoreBlue += Int(numeroAtividadesAzul.text!)!
//            homeVC.atividadeManager.scorePool.userScoreOrange += Int(numeroAtividadesLaranja.text!)!
            
            print(homeVC.atividadeManager.atividades)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.title = "Nova Atividade"
        
        NomeAtividade.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
       // destination.atividades = atividades
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}

extension NovaAtividadeViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if NomeAtividade.text != "" {
            textField.endEditing(true)
            return true
        } else {
            NomeAtividade.placeholder = "Coloque um nome para atividade"
            return false
        }
    }
    

    
}
