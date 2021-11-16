//
//  MainViewController.swift
//  Detecting
//
//  Created by Saeed Rahmatolahi
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var textRecognition: UIButton!
    @IBOutlet weak var imageRecognition: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupOutlets()
    }
    
    
    /// set buttons targets
    func setupOutlets() {
        self.textRecognition.addTarget(self, action: #selector(showTextRecognition), for: .touchUpInside)
        self.imageRecognition.addTarget(self, action: #selector(showImageRecognition), for: .touchUpInside)
    }
    
    
    /// showing face recognition page
    @objc func showImageRecognition() {
        self.performingSegue(Segues.imageRecognition)
    }
    
    
    /// showing text recognition page
    @objc func showTextRecognition() {
        self.performingSegue(Segues.textRecognition)
    }
}
