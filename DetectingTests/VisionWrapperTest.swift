//
//  VisionWrapperTest.swift
//  DetectingTests
//
//  Created by Saeed Rahmatolahi
//

import XCTest
import Detections

@testable import Detecting
@testable import Detections

class VisionWrapperTest: XCTestCase {
    
    func test_notFoundText() {
        VisionWrapper.recognizeText(UIImage(),recognitionLevel:.accurate,autoCorrection: false) { resultTexts in
            XCTAssertEqual([], resultTexts, "no Data found")
        } onError: { error in
            XCTAssertNotNil(error)
        }
    }
    
    func test_cityAndNameDetectText() {
        VisionWrapper.recognizeText(UIImage(named: "3")!,recognitionLevel:.accurate,autoCorrection: false) { resultTexts in
            XCTAssertTrue(resultTexts.contains("BERLIN"))
            XCTAssertTrue(resultTexts.contains("ERIKA"))
        } onError: { error in
            XCTAssertNotNil(error)
        }
    }
}
