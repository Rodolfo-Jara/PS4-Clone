//
//  ContentView.swift
//  Ps4Movil
//
//  Created by aresio on 2/11/23.
//

import SwiftUI

struct ContentView: View {
@StateObject  var loginViewModel = LoginViewModel()
@StateObject var registerViewModel = RegisterViewModel()
@StateObject var viewModel = ContentViewModel()
    var body: some View {
        Group{
            if viewModel.userSession == nil {
                LoginView()
                    .environmentObject(registerViewModel)
                    .environmentObject(loginViewModel)
            } else {
                MainTabView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
