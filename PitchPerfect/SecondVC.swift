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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func loadView() {
        self.view = secondView
    }

}
