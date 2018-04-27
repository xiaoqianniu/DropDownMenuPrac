//
//  ViewController.swift
//  DropDownMenuPrac
//
//  Created by Hongbo Niu on 2018-04-27.
//  Copyright © 2018 Hongbo Niu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuLbl: UIButton!
    
    @IBOutlet var itemsLbl: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()


    
}

    @IBAction func menuTapped(_ sender: UIButton) {
        itemsLbl.forEach { (button) in
            UIView.animate(withDuration: 0.5, animations: {
             button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
            
        }
    }
    
    @IBAction func ItemTapped(_ sender: UIButton) {
        menuLbl.titleLabel?.text = sender.titleLabel?.text
        
        itemsLbl.forEach { (button) in
            UIView.animate(withDuration: 0.5, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
            
        }
    }
    
}
