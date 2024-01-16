//
//  FirstViewController.swift
//  Sample-VIPER-Architecture
//
//  Created by K.Hatano on 2024/01/16.
//

import UIKit
import SwiftUI

/// 一番初めに表示される画面のViewController
class FirstViewController : AppViewController {
    
    private let viewModel = FirstViewModel()
    
    private lazy var hostingController: UIHostingController = {
        UIHostingController(rootView: FirstView(viewModel: viewModel))
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(hostingController.view)
        NSLayoutConstraint.activate([
            hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostingController.view.leadingAnchor.constraint(equalTo: view.leftAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        addChild(hostingController)
        
        // UIHostingControllerのライフサイクルを親UIViewControllerのライフサイクルに一致させる
        hostingController.didMove(toParent: self)
        
    }
    
}
