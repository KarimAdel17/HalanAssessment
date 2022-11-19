//
//  BaseNavigationController.swift
//  HalanAssessment
//
//  Created by Karim on 19/11/2022.
//

import Foundation
import UIKit

class BaseNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        navigationBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.1049182042, green: 0.1301741898, blue: 0.1211523041, alpha: 1)]
        navigationBarAppearance.backgroundColor = UIColor.white
        navigationBarAppearance.shadowColor = #colorLiteral(red: 0.7490196824, green: 0.7490196824, blue: 0.7490196824, alpha: 0.5)
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().compactAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
    }

    override open var preferredStatusBarStyle: UIStatusBarStyle {
        .darkContent
    }
}
