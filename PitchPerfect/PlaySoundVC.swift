//
//  PlaySoundVC.swift
//  PitchPerfect
//
//  Created by Dagmawi Nadew-Assefa on 11/4/17.
//  Copyright © 2017 2Plus2. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundVC: UIViewController {

    let secondView = SecondView()
    var recordedAudioURL: URL!
    var audioFile:AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int {case slow = 0, fast, chipmunk, vader, echo, reverb}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTarget()
        setupAudio()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(recordedAudioURL)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        configureUI(.notPlaying)
        
    }

    override func loadView() {
        self.view = secondView
    }

    func setupTarget() {
        secondView.snailButton.addTarget(self, action: #selector(playAudioButtonPressed), for: .touchUpInside)
        secondView.rabbitButton.addTarget(self, action: #selector(playAudioButtonPressed), for: .touchUpInside)
        secondView.chipmunkButton.addTarget(self, action: #selector(playAudioButtonPressed), for: .touchUpInside)
        secondView.vaderButton.addTarget(self, action: #selector(playAudioButtonPressed), for: .touchUpInside)
        secondView.echoButton.addTarget(self, action: #selector(playAudioButtonPressed), for: .touchUpInside)
        secondView.reverbButton.addTarget(self, action: #selector(playAudioButtonPressed), for: .touchUpInside)
        secondView.stopButton.addTarget(self, action: #selector(stopAudioButtonPressed), for: .touchUpInside)
    }
    
    @objc func playAudioButtonPressed(sender: UIButton!) {
        
        print("playing audio")
        switch(ButtonType(rawValue: sender.tag)!) {
        case .slow:
            playSound(rate: 0.5)
        case .fast:
            playSound(rate: 1.5)
        case .chipmunk:
            playSound(pitch: 1000)
        case .vader:
            playSound(pitch: -1000)
        case .echo:
            playSound(echo: true)
        case .reverb:
            playSound(reverb: true)
        }
        
        configureUI(.playing)
    }
    
    @objc func stopAudioButtonPressed() {
        
        print("stoping audio")
        stopAudio()
        
    }
}
