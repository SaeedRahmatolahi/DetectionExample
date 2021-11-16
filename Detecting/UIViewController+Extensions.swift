//
//  UIViewController+Extensions.swift
//  Detecting
//
//  Created by Saeed Rahmatolahi
//

import Foundation
import UIKit

extension UIViewController {
    func performingSegue(_ segue : String) {
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: segue, sender: nil)
        }
    }
    
    func showAlert(title : String = "" ,message : String = "",okTitle : String = "Ok",_ completion : @escaping()->Void) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: okTitle, style: UIAlertAction.Style.default, handler: { action in
            completion()
        }))
        
        DispatchQueue.main.async {
            self.present(alert, animated: true, completion: nil)
        }
    }
}
