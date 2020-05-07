//
//  ViewController.swift
//  CircularProgressView
//
//  Created by Ahmed on 10/24/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var circularView: CircularProgressView!
    var duration: TimeInterval!
    override func viewDidLoad() {
        super.viewDidLoad()
        circularView = CircularProgressView()
        view.isUserInteractionEnabled = true
        circularView.center = view.center
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
        view.addSubview(circularView)
        duration = 5   //Play with whatever value you want :]
        circularView.progressAnimation(duration: duration)
        
    }
    @objc func handleTap() {
        
    }
   
    
}
