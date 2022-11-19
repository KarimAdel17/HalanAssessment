//
//  TwitterViewController.swift
//  HalanAssessment
//
//  Created by Karim on 19/11/2022.
//

import UIKit
import TwitterCounter

class TwitterViewController: UIViewController {

    lazy var containerView: TwitterCounterContainerView = {
        let view = TwitterCounterContainerView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Twitter character count"
        
//        self.view.backgroundColor = .red
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

            view.addGestureRecognizer(tap)
    }

    override func loadView() {
        super.loadView()
        self.view = containerView
    }

    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

}
