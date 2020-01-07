//
//  ViewController.swift
//  Activity Indicator and Sound practice
//
//  Created by Abdullah Al Numan(AAN) on 1/6/20.
//  Copyright © 2020 Abdullah Al Numan(AAN). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    var elapsed = 1.5
    override func viewDidLoad() {
        activityIndicator.startAnimating()
        super.viewDidLoad()
        let delay = max(0.0, 5.0)
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
        self.activityIndicator.stopAnimating()
            self.activityIndicator.isHidden = true
            self.performSegue(withIdentifier: "LoginViewController", sender: self)
         }
        
       
        
    }


  
    
}

