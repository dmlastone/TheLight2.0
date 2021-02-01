//
//  ViewController.swift
//  The Light 2.0
//
//  Created by Andrey on 01.02.2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // не понимаю как функция работает :) но она работает.
    func toggleFlash() {
        guard let device = AVCaptureDevice.default(for: AVMediaType.video) else { return }
        guard device.hasTorch else { return }

        do {
            try device.lockForConfiguration()

            if (device.torchMode == AVCaptureDevice.TorchMode.on) {
                device.torchMode = AVCaptureDevice.TorchMode.off
            } else {
                do {
                    try device.setTorchModeOn(level: 1.0)
                } catch {
                    print(error)
                }
            }

            device.unlockForConfiguration()
        } catch {
            print(error)
        }
    }
    
    var lightColor = 1
    
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        switch lightColor {
        case 1:
            view.backgroundColor = .brown
            toggleFlash()
        case 2:
            view.backgroundColor = .yellow
            toggleFlash()
        case 3:
            view.backgroundColor = .purple
            toggleFlash()
        case 4:
            view.backgroundColor = .gray
            toggleFlash()
        case 5:
            view.backgroundColor = .blue
            toggleFlash()
        case 6:
            view.backgroundColor = .orange
            toggleFlash()
        case 7:
            view.backgroundColor = .cyan
            toggleFlash()
        case 8:
            view.backgroundColor = .magenta
            toggleFlash()
        default:
            view.backgroundColor = .red
            toggleFlash()
            lightColor = 0
        }
        lightColor += 1
        
        
    }
    
}

