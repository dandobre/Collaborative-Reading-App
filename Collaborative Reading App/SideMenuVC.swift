//
//  SidemenuVC.swift
//  Collaborative Reading App
//
//  Created by Student on 2017-03-27.
//  Copyright © 2017 Daniel Dobre. All rights reserved.
//

import UIKit

class SideMenuVC: UIViewController {
    
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var menuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuView.layer.shadowOpacity = 1
    }
    
    @IBAction func openMenu(_ sender: Any) {
        
        if (menuShowing) {
            leadingConstraint.constant = -173
            
            UIView.animate(withDuration: 0.3, animations: { self.view.layoutIfNeeded()})
        } else {
            leadingConstraint.constant = 0//Side menu pops up
            
            UIView.animate(withDuration: 0.3, animations: { self.view.layoutIfNeeded()})
            
        }
        
        menuShowing = !menuShowing
    }
    
    
    
}

