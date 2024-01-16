//
//  FirstView.swift
//  Sample-VIPER-Architecture
//
//  Created by K.Hatano on 2024/01/16.
//

import SwiftUI

struct FirstView: View {
    
    @ObservedObject private var viewModel: FirstViewModel
    
    /// ボタンがタップされた
    var onButtonTap: (() -> Void) = { }
    
    init(viewModel: FirstViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text(viewModel.deviceName)
            
            Button("Tap Me") {
                onButtonTap()
            }
        }
    }
}

#Preview {
    FirstView(viewModel: FirstViewModel.preViewModel())
}
