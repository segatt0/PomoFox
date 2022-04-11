//
//  PomoFoxApp.swift
//  PomoFox
//
//  Created by Moises Vilas Boas on 11/04/22.
//

import SwiftUI

@main
struct PomoFoxApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView(viewModel: SplashViewModel())
        }
    }
}
