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
    
    let verticalStack: UIStackView = {
       
        let stack = UIStackView()
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 0.0
        return stack
    }()
    
    let horizontalStackView: UIStackView = {
        
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        
        return stack
    }()
    
    let horizontalStackView2: UIStackView = {
        
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        
        return stack
    }()
    
    
    let horizontalStackView3: UIStackView = {
        
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        
        return stack
    }()
    
    let snailButton: UIButton = {
       
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Slow"), for: UIControlState.normal)
        button.contentMode = .scaleToFill
        return button
    }()
    
    let rabbitButton: UIButton = {
        
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Fast"), for: UIControlState.normal)
        button.contentMode = .scaleToFill
        button.tag = 1
        return button
    }()
    
    let chipmunkButton: UIButton = {
        
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "HighPitch"), for: UIControlState.normal)
        button.contentMode = .scaleToFill
        button.tag = 2
        return button
    }()
    
    let vaderButton: UIButton = {
        
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "LowPitch"), for: UIControlState.normal)
        button.contentMode = .scaleToFill
        button.tag = 3
        return button
    }()
    
    let echoButton: UIButton = {
        
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Echo"), for: UIControlState.normal)
        button.contentMode = .scaleToFill
        button.tag = 4
        return button
    }()
    
    let reverbButton: UIButton = {
        
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Reverb"), for: UIControlState.normal)
        button.contentMode = .scaleToFill
        button.tag = 5
        return button
    }()
    
    let stopButton: UIButton = {
        
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Stop"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    func setupView() {
        
        backgroundColor = .white
        
        addSubview(verticalStack)
        verticalStack.topAnchor.constraint(equalTo: self.topAnchor, constant: 65).isActive = true
        //verticalStack.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        verticalStack.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        verticalStack.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        verticalStack.addArrangedSubview(horizontalStackView)
        verticalStack.addArrangedSubview(horizontalStackView2)
        verticalStack.addArrangedSubview(horizontalStackView3)
        
        horizontalStackView.addArrangedSubview(snailButton)
        horizontalStackView.addArrangedSubview(rabbitButton)
        horizontalStackView2.addArrangedSubview(chipmunkButton)
        horizontalStackView2.addArrangedSubview(vaderButton)
        horizontalStackView3.addArrangedSubview(echoButton)
        horizontalStackView3.addArrangedSubview(reverbButton)
        
        addSubview(stopButton)
        stopButton.topAnchor.constraint(equalTo: verticalStack.bottomAnchor, constant: -18).isActive = true
        stopButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -18).isActive = true
        stopButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        stopButton.heightAnchor.constraint(equalToConstant: 64).isActive = true
        stopButton.widthAnchor.constraint(equalToConstant: 64).isActive = true
        
    }

}
