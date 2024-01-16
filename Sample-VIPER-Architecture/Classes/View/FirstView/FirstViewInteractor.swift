//
//  FirstViewInteractor.swift
//  Sample-VIPER-Architecture
//
//  Created by K.Hatano on 2024/01/16.
//

import Foundation

protocol FirstViewUseCase: AnyObject {
    
    func fetchDevices() async
    
}

class FirstViewInteractor {
    
}

extension FirstViewInteractor: FirstViewUseCase {
    
    func fetchDevices() async {
        // TODO: Code here..
    }
    
}
