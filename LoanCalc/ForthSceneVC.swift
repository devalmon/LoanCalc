//
//  ForthSceneVC.swift
//  LoanCalc
//
//  Created by Alexey Baryshnikov on 3/23/17.
//  Copyright © 2017 Alexey Baryshnikov. All rights reserved.
//

import UIKit
import AVFoundation

class ForthSceneVC: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let captureSession = AVCaptureSession()
    captureSession.sessionPreset = AVCaptureSessionPresetLow
    
    
  }
}
