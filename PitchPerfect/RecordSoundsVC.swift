//
//  RecordSoundsVC.swift
//  PitchPerfect
//
//  Created by Dagmawi Nadew-Assefa on 11/3/17.
//  Copyright © 2017 2Plus2. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundsVC: UIViewController, AVAudioRecorderDelegate {
    
    let mainView = RecordView()
    let secondVC = SecondVC()
    var audioRecorder: AVAudioRecorder!
    

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
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        print(filePath as Any)
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord, with:AVAudioSessionCategoryOptions.defaultToSpeaker)
        
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
    
    @objc func stopRecording() {
        
        mainView.stpRecordButton.isEnabled = false
        mainView.recordButton.isEnabled = true
        mainView.placeholderText.text = "Tap to Record."
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
        
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        
        if flag{
            secondVC.audioRecordedURL = audioRecorder.url
            navigationController?.pushViewController(secondVC, animated: true)
        }else{
            print("Error recording sound")
        }
        
    }

}

