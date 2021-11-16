//
//  DetectionVC.swift
//  Detecting
//
//  Created by Saeed Rahmatolahi
//

import UIKit
import Detections

class DetectionVC: DetectionViewController , detectionProtocol {
    
    
    /// handle scanned results
    /// - Parameter result: contains error,image and detected texts
    func scanResults(_ result: ScanResults) {
        results = result
        result.error != nil ? showAlert(title: PublicConstants.error, message: PublicConstants.someThingWrong,{}) : self.performingSegue(Segues.showImage)
    }

    var results = ScanResults()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.detectionDelegate = self
        self.fastRecognition = .yes
        self.autoCorrection = .yes
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? ShowImageViewController else {return}
        vc.takenPhoto = results.scannedImage ?? UIImage()
        vc.resultTexts = results.detectedTexts?.joined(separator: "\n") ?? ""
    }

}

