//
//  ViewController.swift
//  AnchorsLab
//
//  Created by Kaushal Desai on 2022-10-12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupViews()
    }
    
    func setupViews() {
        
        // upper left label
        
        let upperLeftLabel = makeLabel(withText: "UpperLeft")
        view.addSubview(upperLeftLabel)
        
        upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        // upper right label
        
        let upperRightLabel = makeLabel(withText: "UpperRight")
        view.addSubview(upperRightLabel)
        
        upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        
        upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        // lower left label
        
        let lowerLeftLabel = makeSecondaryLabel(withText: "LowerLeft")
        view.addSubview(lowerLeftLabel)
        
        lowerLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        
        lowerLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        // lower right Button
        
        let lowerRightButton = makeButton(withText: "Pay Bill")
        view.addSubview(lowerRightButton)
        
        lowerRightButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        lowerRightButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        
        
        // center View
        
        let cyanView = makeView()
        view.addSubview(cyanView)
        // Option 1: Size Expliciitly
        cyanView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cyanView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
//        cyanView.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        cyanView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        // Option 2: Size Dynamically (pinning) - more common
        
        // width
        cyanView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        cyanView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        // height
        cyanView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        cyanView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
    }
    
    func makeLabel(withText text: String) -> UILabel {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .purple
        
        return label
    }

    
    func makeSecondaryLabel(withText text: String) -> UILabel {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .purple
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .gray
        
        return label
    }
    
    func makeButton(withText text: String) -> UIButton {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.backgroundColor = .orange
        
        return button
    }
    
    
    func makeView() -> UIView {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .cyan
        
        return view
    }
    

}

