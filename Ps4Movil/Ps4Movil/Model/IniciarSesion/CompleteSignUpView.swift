//
//  CompleteSignUpView.swift
//  Ps4Movil
//
//  Created by aresio on 19/11/23.
//

import SwiftUI

struct CompleteSignUpView: View {
    @EnvironmentObject
        var registerViewModel:RegisterViewModel
var body: some View {
        VStack(spacing:12) {
            Image("LogoPs") // Reemplaza con el nombre de tu imagen de logo de PlayStation
                .resizable()
                .frame(width: 150, height: 150)
                .padding(.bottom, 30)
            Text("Bienvenido a la familia PlayStation")
                .font(.title2)
            Text("Haga clic a continuación para continuar")
                .font(.footnote)
                .foregroundColor(.gray)
            Button {
                Task {
                    try await
                    registerViewModel
                        .createUsername()
                }
            } label: {
                Text("Ok")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            
            Spacer()

            
        }//End VStack main
    }
}

struct CompleteSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpView()
    }
}
