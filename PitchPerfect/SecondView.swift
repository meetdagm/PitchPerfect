//
//  SecondView.swift
//  PitchPerfect
//
//  Created by Dagmawi Nadew-Assefa on 11/4/17.
//  Copyright © 2017 2Plus2. All rights reserved.
//

import UIKit

class SecondView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        
        backgroundColor = .purple
        
    }

}
