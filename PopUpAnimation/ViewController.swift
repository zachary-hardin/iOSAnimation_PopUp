//
//  ViewController.swift
//  PopUpAnimation
//
//  Created by Zachary Hardin on 3/26/18.
//  Copyright © 2018 Zachary Hardin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myView: UIView!
    var height: CGFloat!
    
    @IBAction func close(_ sender: Any) {
        UIView.animate(withDuration: 0.45, delay: 0, usingSpringWithDamping: 0.55, initialSpringVelocity: 0.0, options: [], animations: {
            self.myView.frame.origin.y += self.height
        })
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.45, delay: 0, usingSpringWithDamping: 0.55, initialSpringVelocity: 0.0, options: [], animations: {
            self.myView.frame.origin.y -= self.height
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        height = myView.bounds.height - 100
    }
}

