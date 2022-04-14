//
//  SignInView.swift
//  PomoFox
//
//  Created by Moises Vilas Boas on 11/04/22.
//

import SwiftUI


struct SignInView: View {
    @ObservedObject var viewModel: SignInViewModel
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 30) {
            
            Image("Logo")
                .resizable()
                .scaledToFit()
                .padding(.top)
                .frame(width: 250, height: 250)
            Spacer()
                .frame(height: 10)
            VStack(spacing: -10) {
            VStack(alignment: .leading, spacing: -20) {
                
                
                Text("Email")
                    .padding()
                
                emailField
                
                    .padding(.bottom, 1)
            }
            
            VStack(alignment: .leading, spacing: -20) {
                Text("Password")
                    .padding()
                passwordField
                    .padding(.bottom, 1)
                
            }
            }
            loginButton
            //            Text("Login")
            //                .font(Font.system(size: 50).bold())
            
            registerButton
            
            
            
        }
    }
}



extension SignInView {
    var emailField: some View {
        
        TextField("Digite seu email", text: $email)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1)
            ).padding()
//                   .border(Color.black)
//                   .cornerRadius(8)                .textFieldStyle(RoundedBorderTextFieldStyle())
//            .padding()
//
//
//            .cornerRadius(100)
//            .background(Color.white)
            
            
            //.background(RoundedRectangle(cornerRadius: 70))
        //            .frame(width: 300)
//            .background(Color.red)
    }
}


extension SignInView {
    var passwordField: some View {
        SecureField("Digite sua senha", text: $password)
            
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1)
            ).padding()
    }
}


extension SignInView {
    var loginButton: some View {
        Button("Login") {
            viewModel.login(email: email, password: email)
        }
    }
}

extension SignInView {
    
    var registerButton: some View {
        Button("Se cadastre") {
            
        }
    }
}





struct SignInView_Previews: PreviewProvider {
    
    static var previews: some View {
        let viewModel = SignInViewModel()
        SignInView(viewModel: viewModel)
    }
}
