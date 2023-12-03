//
//  LoginView.swift
//  Ps4Movil
//
//  Created by aresio on 19/11/23.
//

import SwiftUI


struct LoginView: View {
    @EnvironmentObject
        var loginViewModel:LoginViewModel
    //@State private var email = ""
    //@State private var password = ""

    var body: some View {
        NavigationStack{
            VStack {
                Image("LogoPs") // Reemplaza con el nombre de tu imagen de logo de PlayStation
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding(.bottom, 30)

                TextField("Email", text: $loginViewModel.email)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                    .padding(.bottom, 20)

                SecureField("Password", text: $loginViewModel.password)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                    .padding(.bottom, 20)

                Button{
                    Task {
                            try await
                            loginViewModel
                            .loginUser()
                         }
                } label:{
                    Text("Iniciar sesión")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                
                //Divider OR
                                
                Spacer()
                                
                Divider()
                                
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                HStack {
                    Text("Dont have an account?")
                    Text("Sign Up").fontWeight(.semibold)
                }
                    .font(.footnote)
                    .foregroundColor(Color(.systemBlue))
                }
            }
            .padding()
            .navigationBarTitle("Iniciar sesión", displayMode: .inline)
        }

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
