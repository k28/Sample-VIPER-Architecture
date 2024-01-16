//
//  FirstViewRouter.swift
//  Sample-VIPER-Architecture
//
//  Created by K.Hatano on 2024/01/16.
//

import Foundation

protocol FirstViewWireframe: AnyObject {
}

/// FirstViewのRouter
final class FirstViewRouter {
    
    private unowned let viewController: AppViewController
    
    private init(viewController: AppViewController) {
        self.viewController = viewController
    }
    
    static func assembleModels() -> AppViewController {
        let view = FirstViewController()
        let router = FirstViewRouter(viewController: view)
        let interactor = FirstViewInteractor()
        
        let presenter = FirstViewPresenter(
            view: view,
            router: router,
            firstViewInteractor: interactor)
        view.presenter = presenter
        
        return view
    }
    
}

extension FirstViewRouter : FirstViewWireframe {
    
}
