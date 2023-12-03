//
//  RegisterViewModel.swift
//  Ps4Movil
//
//  Created by aresio on 26/11/23.
//

import Foundation
class RegisterViewModel:ObservableObject {
    @Published var email:String = ""
    @Published var password = ""
    @Published var username = ""
    
    func createUsername() async throws{
        try await
        AuthService.shared
            .createUser(email: email,
                        username: username,
                        password: password)
    }
}
