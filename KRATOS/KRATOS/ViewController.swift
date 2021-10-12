//
//  ViewController.swift
//  KRATOS
//
//  Created by Vaishnavi Prashant on 6/4/19.
//  Copyright © 2019 Vaishnavi Prashant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var strongerB: UILabel!
    @IBOutlet weak var strongerM: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        animateTextB()
        self.strongerB.alpha = 0
        
        animateTextM()
        self.strongerM.alpha = 0
        
        strongerB.alpha = 0
        strongerM.alpha = 0
    }
    
    func animateTextB()
    {
        UIView.animate(withDuration: 4.0, animations: {
            self.strongerB.alpha = 1.0
            }, completion: {
                
            (Completed : Bool) -> Void in
                
                self.animateTextB()
        })
    }
    
    func animateTextM()
    {
        UIView.animate(withDuration: 4.0, animations: {
            self.strongerM.alpha = 1.0
            
            
        }, completion: {
            (Completed : Bool) -> Void in
            
            self.animateTextM()
        })
    }
}

