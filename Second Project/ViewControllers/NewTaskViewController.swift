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
    
    @IBOutlet weak var numeroAtividadesAzul: UILabel!
    @IBOutlet weak var numeroAtividadesLaranja: UILabel!
    


    @IBAction func limpaEntrada() {
    }
    
    @IBAction func registrar() {
        // aqui calcular o que se precisa para construir a classe de atividade
        // total de atividade
        // distrbuição
        
        // usar for para criar atividades com base no valor de frenquencia
        
        // usar for para dias da semana para adicionar no dict de atividades do
        // dia da semana
        let novaAtividade =
            Atividade(nome: NomeAtividade.text! , tipo: "", diasDaSemana: "", frequencia: 1, distribuicao: 0.75, numeroTotalDeAtividades: 100)
        
        
        let homePageViewController = tabBarController?.viewControllers![1] as! HomePageViewController
        homePageViewController.atividades.append(novaAtividade)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
