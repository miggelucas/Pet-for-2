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
    }
    
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
