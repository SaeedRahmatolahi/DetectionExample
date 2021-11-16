//
//  FaceDetectionTests.swift
//  DetectingTests
//
//  Created by Saeed Rahmatolahi
//

import XCTest
import Detections

@testable import Detecting
@testable import Detections

class FaceDetectionTests: XCTestCase {
    func testEmptyImage() throws {
        FaceDetection.imageProcessing(UIImage()) { result in
            switch result {
            case .success(let message) :
                XCTAssertEqual("Success", message)
            case .failure(let error):
                XCTAssertEqual(faceErrors.noCGImage, error)
            }
        }
    }
    
    func testNoFaceImage() throws {
        FaceDetection.imageProcessing(UIImage(named: "0")!) { result in
            switch result {
            case .success(let message) :
                XCTAssertEqual("Success", message)
            case .failure(let error):
                XCTAssertEqual(faceErrors.noFace, error)
            }
        }
    }
    
    func testFaceImage() throws {
        FaceDetection.imageProcessing(UIImage(named: "1")!) { result in
            switch result {
            case .success(let message) :
                XCTAssertEqual("Success", message)
            case .failure(let error):
                XCTAssertEqual(faceErrors.noFace, error)
            }
        }
    }
    
    func testMoreThanOneFaceImage() throws {
        FaceDetection.imageProcessing(UIImage(named: "2")!) { result in
            switch result {
            case .success(let message) :
                XCTAssertEqual("Success", message)
            case .failure(let error):
                XCTAssertEqual(faceErrors.moreThanOneFace, error)
            }
        }
    }
}
