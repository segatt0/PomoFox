//
//  SplashView.swift
//  PomoFox
//
//  Created by Moises Vilas Boas on 11/04/22.
//

import SwiftUI

struct SplashView: View {
    @ObservedObject var viewModel: SplashViewModel
    
    var body: some View {
        Group {
            switch viewModel.uiState {
            case .loading:
                ZStack {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .background(Color.white)
                        .padding(100)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                }
            case .goToSignScreen:
                Text("Tela de Login")
            }
        }.onAppear(perform: {
            viewModel.onAppear()})
    }
}













struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = SplashViewModel()
        SplashView(viewModel: viewModel)
    }
    
}
