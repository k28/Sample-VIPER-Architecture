//
//  FirstViewModel.swift
//  Sample-VIPER-Architecture
//
//  Created by K.Hatano on 2024/01/16.
//

import Foundation

struct FirstViewDeviceViewData : Identifiable {
    let id = UUID()
    let name: String
    let interval: RecInterval
}

class FirstViewModel : ObservableObject {
    @Published var deviceList: [FirstViewDeviceViewData] = []
}

extension FirstViewModel {
    
    static func preViewModel() -> FirstViewModel {
        let model = FirstViewModel()
        model.deviceList.append(FirstViewDeviceViewData(name: "FirstDevice", interval: RecInterval(interval: 10)))
        model.deviceList.append(FirstViewDeviceViewData(name: "SecondDevice", interval: RecInterval(interval: 60)))
        return model
    }
    
}
