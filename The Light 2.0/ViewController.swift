//
//  ViewController.swift
//  The Light 2.0
//
//  Created by Andrey on 01.02.2021.
//

import UIKit

class ViewController: UIViewController {

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    var lightColor = 1
    
    @IBAction func buttonPressed(_ sender: Any) {
        switch lightColor {
        case 1:
            view.backgroundColor = .brown
        case 2:
            view.backgroundColor = .yellow
        case 3:
            view.backgroundColor = .purple
        case 4:
            view.backgroundColor = .gray
        case 5:
            view.backgroundColor = .blue
        case 6:
            view.backgroundColor = .orange
        case 7:
            view.backgroundColor = .cyan
        case 8:
            view.backgroundColor = .magenta
        default:
            view.backgroundColor = .red
            lightColor = 0
        }
        lightColor += 1
        
        
    }
    
}

