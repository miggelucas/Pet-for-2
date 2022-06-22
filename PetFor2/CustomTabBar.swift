//
//  tabBarControllerViewController.swift
//  PetFor2
//
//  Created by Lucas Migge de Barros on 21/06/22.
//

import UIKit

class CustomTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.backgroundColor = UIColor(named: "Amarelo")
        // Do any additional setup after loading the view.
    
        self.tabBar.items![0].image = UIImage(systemName: "plus.app")
        self.tabBar.items![1].image = UIImage(systemName: "house")
        self.tabBar.items![2].image = UIImage(systemName: "scroll")
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
