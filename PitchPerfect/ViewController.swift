//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Dagmawi Nadew-Assefa on 11/3/17.
//  Copyright © 2017 2Plus2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mainView = MainView()
    let secondVC = SecondVC()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupTarget()
        mainView.stpRecordButton.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        mainView.stpRecordButton.isEnabled = false
    }
    
    override func loadView() {
        self.view = mainView
    }
    
    func setupTarget() {
        
        mainView.recordButton.addTarget(self, action: #selector(startRecording), for: .touchUpInside)
        mainView.stpRecordButton.addTarget(self, action: #selector(stopRecording), for: .touchUpInside)
    
    }

    @objc func startRecording() {
        
        mainView.stpRecordButton.isEnabled = true
        mainView.recordButton.isEnabled = false
        mainView.placeholderText.text = "Recording in Progress..."
    }
    
    @objc func stopRecording() {
        
        mainView.stpRecordButton.isEnabled = false
        mainView.recordButton.isEnabled = true
        mainView.placeholderText.text = "Tap to Record."
        navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
    

}

