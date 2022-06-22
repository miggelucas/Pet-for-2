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
        let index = sender.tag
        if atividadeManager.atividadesPool[index].status == false {
            sender.setImage(UIImage(named: "botao azul"), for: .normal)
            atividadeManager.atividadesPool[index].updateStatus(conluida: true)
            atividadeManager.scorePool.userScoreBlue += 1
            print("total de atividades laranja \(atividadeManager.scorePool.totalBlue)")
            print("score de atividades laranja \(atividadeManager.scorePool.userScoreBlue)")
        } else {
            sender.setImage(UIImage(named: "botao amarelo"), for: .normal)
            atividadeManager.atividades[index].updateStatus(conluida: false)
            atividadeManager.scorePool.userScoreBlue -= 1
            
        }
    }
    
    @IBAction func botaoLaranjaPressed(_ sender: UIButton) {
        let index = sender.tag
        if atividadeManager.atividadesPool[index].status == false {
            sender.setImage(UIImage(named: "botao laranja"), for: .normal)
            atividadeManager.atividadesPool[index].updateStatus(conluida: true)
            atividadeManager.scorePool.userScoreOrange += 1
        } else {
            sender.setImage(UIImage(named: "botao amarelo"), for: .normal)
            atividadeManager.atividadesPool[index].updateStatus(conluida: false)
            atividadeManager.scorePool.userScoreOrange -= 1
        }
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

    
    

