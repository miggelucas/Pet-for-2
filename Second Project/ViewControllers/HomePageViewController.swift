//
//  HomePageViewController.swift
//  Second Project
//
//  Created by Lucas Migge de Barros on 17/05/22.
//

import UIKit

class HomePageViewController: UIViewController {
    
    var atividades: [Atividade] = []
    
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView.delegate = self
        tableView.dataSource = self
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
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
    
}

extension HomePageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return atividades.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // a quantidade de celulas desenhas depende da
        // quantidade de atividades para o dia da semana
        
        // return atividades[diaDaSemana].count
        
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "AtividadeCell", for: indexPath) as! AtividadeCell
        
        tableViewCell.descicaoAtividade.text = atividades[indexPath.row].nome

        return tableViewCell
    }
    
    
    
}

