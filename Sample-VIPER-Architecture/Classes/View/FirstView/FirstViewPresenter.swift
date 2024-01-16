//
//  FirstViewPresenter.swift
//  Sample-VIPER-Architecture
//
//  Created by K.Hatano on 2024/01/16.
//

import Foundation

protocol FirstViewPresenterInput {
    
    func onViewDidApper()
    func onSelectButton()
    
}

class FirstViewPresenter {
    
    private weak var view: FirstViewInterface?
    private let router: FirstViewWireframe
    private let firstViewInteractor: FirstViewUseCase
    
    init(view: FirstViewInterface? = nil, router: FirstViewWireframe, firstViewInteractor: FirstViewUseCase) {
        self.view = view
        self.router = router
        self.firstViewInteractor = firstViewInteractor
    }
    
    
}

extension FirstViewPresenter : FirstViewPresenterInput {
    
    func onViewDidApper() {
        // TODO: code here..
    }
    
    func onSelectButton() {
        // TODO: Code here..
        
    }
    
}
