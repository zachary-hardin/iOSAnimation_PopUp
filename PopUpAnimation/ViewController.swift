//
//  ViewController.swift
//  PopUpAnimation
//
//  Created by Zachary Hardin on 3/26/18.
//  Copyright © 2018 Zachary Hardin. All rights reserved.
//

import UIKit

enum DirectionHeight: Int {
    case Open = -500
    case Close = 500
}

class ViewController: UIViewController {
    @IBOutlet weak var myView: UIView!
    
    @IBAction func close(_ sender: Any) {
        toggleAnimation(DirectionHeight.Close.rawValue)
    }
    
    @IBAction func open(_ sender: Any) {
        toggleAnimation(DirectionHeight.Open.rawValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func toggleAnimation(_ directionHeight: Int) {
        UIView.animate(withDuration: 0.45, delay: 0, usingSpringWithDamping: 0.55, initialSpringVelocity: 0.0, options: [], animations: {
            self.myView.frame.origin.y += CGFloat(directionHeight)
        })
    }
}

