//
//  LoginViewModel.swift
//  Ps4Movil
//
//  Created by aresio on 26/11/23.
//

import Foundation
class LoginViewModel:ObservableObject {
    @Published var email: String = ""
        @Published var password: String = ""

        func loginUser() async throws {
            try await AuthService.shared.login(email: email, password: password)
        }
}
