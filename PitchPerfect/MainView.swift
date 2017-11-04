//
//  MainView.swift
//  PitchPerfect
//
//  Created by Dagmawi Nadew-Assefa on 11/3/17.
//  Copyright © 2017 2Plus2. All rights reserved.
//

import UIKit

class MainView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let recordButton: UIButton = {
       
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(#imageLiteral(resourceName: "Record"), for: .normal)

        return button
    }()
    
    let placeholderText: UILabel = {
        
        let label = UILabel()
        label.text = "Tap to Record."
        label.font = UIFont(name: "Avenir-Black", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let stpRecordButton: UIButton = {
       
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(#imageLiteral(resourceName: "Stop"), for: .normal)
        
        return button
    }()
    
    
    func setupView() {
        
        backgroundColor = .white
        
        addSubview(recordButton)
        recordButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        recordButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        addSubview(placeholderText)
        placeholderText.topAnchor.constraint(equalTo: recordButton.bottomAnchor, constant: 9).isActive = true
        placeholderText.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        addSubview(stpRecordButton)
        stpRecordButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        stpRecordButton.topAnchor.constraint(equalTo: placeholderText.bottomAnchor, constant: 9).isActive = true
        stpRecordButton.heightAnchor.constraint(equalToConstant: 65).isActive = true
        stpRecordButton.widthAnchor.constraint(equalToConstant: 65).isActive = true
        
        
    }

}
