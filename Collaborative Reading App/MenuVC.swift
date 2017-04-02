//
//  MenuVC.swift
//  Collaborative Reading App
//
//  Created by Saif Al-Din Ali on 2017-03-29.
//  Copyright © 2017 Daniel Dobre. All rights reserved.
//

import UIKit

class MenuVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var menuNameArray : Array = [String]()
    var iconImage : Array = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        menuNameArray = ["Home", "Messages", "Map", "Settings"]
        iconImage = [UIImage(named: "home")!, UIImage(named: "message")!, UIImage(named: "map")!, UIImage(named: "settings")!]
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell") as! MenuTableViewCell
        
        cell.ImageIcon.image = iconImage[indexPath.row]
        cell.labelMenuName.text! = menuNameArray[indexPath.row]
        return cell
    }
    
    //Row table view
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let revealViewController : SWRevealViewController = self.revealViewController()
        
        let cell : MenuTableViewCell = tableView.cellForRow(at: indexPath) as! MenuTableViewCell
        
        if cell.labelMenuName.text! == "Home" {
            let mainStoryBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainStoryBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            let newFrontViewController = UINavigationController.init(rootViewController : desController)
            
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
        
        if cell.labelMenuName.text! == "Messages" {
            let mainStoryBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainStoryBoard.instantiateViewController(withIdentifier: "MessageViewController") as! MessageViewController
            let newFrontViewController = UINavigationController.init(rootViewController : desController)
            
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }

    }
    
    //number of cells. Displays numes of icons 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuNameArray.count
    }
    

    
}
