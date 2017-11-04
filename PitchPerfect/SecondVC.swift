//
//  SecondVC.swift
//  PitchPerfect
//
//  Created by Dagmawi Nadew-Assefa on 11/4/17.
//  Copyright © 2017 2Plus2. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    let secondView = SecondView()
    var audioRecordedURL: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(audioRecordedURL)
    }

    override func loadView() {
        self.view = secondView
    }

}
