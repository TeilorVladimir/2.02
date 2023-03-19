//
//  ViewController.swift
//  2.02
//
//  Created by Сораб В Тейлор on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redSemaforColor: UIView!
    
    @IBOutlet var yellowSemaforColor: UIView!
    
    @IBOutlet var greenSemaforColor: UIView!
    
    @IBOutlet var semaforButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSemaforColor.layer.cornerRadius = 66
        yellowSemaforColor.layer.cornerRadius = 66
        greenSemaforColor.layer.cornerRadius = 66
        
        
        semaforButton.layer.cornerRadius = 30
        semaforButton.setTitle("Start", for: .normal)
    }
    
    @IBAction func actionButton(_ sender: UIButton) {
        
        semaforButton.setTitle("Next", for: .normal)
        if redSemaforColor.alpha == 1 {
            yellowSemaforColor.alpha = 1
            redSemaforColor.alpha = 0.3
            
        } else if yellowSemaforColor.alpha == 1 {
            greenSemaforColor.alpha = 1
            yellowSemaforColor.alpha = 0.3
            
        } else if greenSemaforColor.alpha == 1 {
            redSemaforColor.alpha = 1
            greenSemaforColor.alpha = 0.3
            
        } else {
            redSemaforColor.alpha = 1
        }
    }
}


    





