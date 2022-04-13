//
//  SignInViewModel.swift
//  PomoFox
//
//  Created by Moises Vilas Boas on 13/04/22.
//

import SwiftUI

class SignInViewModel: ObservableObject {
    @Published var uiState: SignInUIS = .none
    
    func login(email: String, password: String) {
        self.uiState = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.uiState = .goToHomeScreen
        }
    }
    
}
