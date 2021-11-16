//
//  ShowImageViewController.swift
//  Detecting
//
//  Created by Saeed Rahmatolahi
//

import UIKit

class ShowImageViewController: UIViewController {

    
    @IBOutlet weak var takenImage: UIImageView!
    
    @IBOutlet weak var results: UITextView!
    var takenPhoto = UIImage()
    var resultTexts : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupOutlets()
    }
    
    func setupOutlets() {
        takenImage.image = takenPhoto
        results.text = resultTexts ?? ""
    }
}
