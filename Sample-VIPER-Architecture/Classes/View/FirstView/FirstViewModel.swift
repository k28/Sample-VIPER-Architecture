//
//  FirstViewModel.swift
//  Sample-VIPER-Architecture
//
//  Created by K.Hatano on 2024/01/16.
//

import Foundation

class FirstViewModel : ObservableObject {
    @Published var isShowText: Bool = true
    @Published var deviceName: String = ""
}

extension FirstViewModel {
    
    static func preViewModel() -> FirstViewModel {
        let model = FirstViewModel()
        model.deviceName = "Test Device Name"
        return model
    }
    
}
