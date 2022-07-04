//
//  HomePageViewController.swift
//  Second Project
//
//  Created by Lucas Migge de Barros on 17/05/22.
//

import UIKit

class HomePageViewController: UIViewController {
    
    var atividadeManager = AtividadeManager()

    
    @IBAction func botaoAzulPressed(_ sender: UIButton) {
        let sumarioVC = tabBarController?.viewControllers?[2] as! SumarioViewController
        let index = sender.tag
        let atividadeSelecionada = atividadeManager.atividadesPool[index]
        
        if atividadeManager.atividadeEmAberto(atividade: atividadeSelecionada) {
            // caso não tenha sido feito ainda
            print(atividadeSelecionada)
            sender.setImage(UIImage(named: "botao azul"), for: .normal)
            atividadeManager.computarAtividadeAzul(index: index)
            
        } else if atividadeManager.atividadeRealizadaPor(atividade: atividadeSelecionada) == "azul" {
            // caso ele ja tenha marcado e queira desmarcar
            print(atividadeManager.atividadeRealizadaPor(atividade: atividadeSelecionada))
            sender.setImage(UIImage(named: "botao amarelo"), for: .normal)
            atividadeManager.descomputarAtividadeAzul(index: index)
        }
        
        sumarioVC.updateProgressBar()
    }
    
    @IBAction func botaoLaranjaPressed(_ sender: UIButton) {
        let sumarioVC = tabBarController?.viewControllers?[2] as! SumarioViewController
        let index = sender.tag
        let atividadeSelecionada = atividadeManager.atividadesPool[index]
        
        if atividadeManager.atividadeEmAberto(atividade: atividadeSelecionada)  {
            sender.setImage(UIImage(named: "botao laranja"), for: .normal)
            atividadeManager.computarAtividadeLaranja(index: index)
        } else if atividadeManager.atividadeRealizadaPor(atividade: atividadeSelecionada) == "laranja" {
            sender.setImage(UIImage(named: "botao amarelo"), for: .normal)
            atividadeManager.descomputarAtividadeLaranja(index: index)
        }
        
        sumarioVC.updateProgressBar()
    }
    
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView.delegate = self
        tableView.dataSource = self

        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        atividadeManager.updateScoreTotalPool()
        atividadeManager.updateAtividadesPool()
        tableView.reloadData()
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

extension HomePageViewController: UITableViewDelegate {
    // eu preciso de você?
}

//MARK: - TableView DataSource

extension HomePageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return atividadeManager.atividadesPool.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // a quantidade de celulas desenhas depende da
        // quantidade de atividades para o dia da semana
        
        // return atividades[diaDaSemana].count
        
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "AtividadeCell", for: indexPath) as! AtividadeCell
        
        tableViewCell.descicaoAtividade.text = atividadeManager.atividadesPool[indexPath.row].nome
        tableViewCell.botaoEsquerdo.tag = indexPath.row
        tableViewCell.botaoDireito.tag = indexPath.row
        

        return tableViewCell
    }
    
}

    
    

