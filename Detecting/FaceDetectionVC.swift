//
//  FaceDetectionVC.swift
//  Detecting
//
//  Created by Saeed Rahmatolahi
//

import UIKit
import Detections

class FaceDetectionVC: FaceDetectionViewController, faceDetectionProtocol {
 
    
    /// handle face recognition
    /// - Parameters:
    ///   - error: can be noFace, moreThanOneFace or unknown problems
    ///   - image: the face image
    func faceDetected(_ error : faceErrors?,_ image : UIImage?) {
        takenImage = image ?? UIImage()
        guard let error = error else {
            self.performingSegue(Segues.showImage)
            return}
        showAlert(title: PublicConstants.error, message: error.errorMessage(),{})
    }
    
    var takenImage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.faceDetectionDelegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? ShowImageViewController else {return}
        vc.takenPhoto = takenImage
        vc.resultTexts = PublicConstants.success
    }
}
