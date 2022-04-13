//
//  SplashViewModel.swift
//  PomoFox
//
//  Created by Moises Vilas Boas on 11/04/22.
//

import SwiftUI

class SplashViewModel: ObservableObject {
    @Published var uiState: SplashUIState = .loading
    
    func onAppear() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.uiState = .goToSignScreen
        }
    }
    func signInView() -> some View {
        return SplashViewRouter.makeSignInView()
    }
    
    
}
