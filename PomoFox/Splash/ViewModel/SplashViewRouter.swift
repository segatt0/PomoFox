//
//  SplashViewRouter.swift
//  PomoFox
//
//  Created by Moises Vilas Boas on 13/04/22.
//

import SwiftUI

enum SplashViewRouter {
    static func makeSignInView() -> some View {
        let viewModel = SignInViewModel()
        return SignInView(viewModel:viewModel)
    }
}
