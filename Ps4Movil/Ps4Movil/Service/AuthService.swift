//
//  AuthService.swift
//  Ps4Movil
//
//  Created by aresio on 26/11/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class AuthService:ObservableObject{
    //ontenido publicado
    @Published var userSession:FirebaseAuth.User?
    
    //patron singleton
    static let shared = AuthService()
    
    init(){
        self.userSession = Auth.auth().currentUser
    }
    
    func login(email: String, password: String) async throws {
            let result = try await
        Auth.auth()
            .signIn(withEmail: email, password: password)
        
            self.userSession = result.user
        }
    
    func
        createUser
        (email: String, username: String,
        password: String)
    async throws {
        let result = try await
            Auth.auth()
                .createUser(withEmail: email, password: password)
        
        self.userSession = result.user
        
        }
    
    func loadUsers() async throws{
        
    }
    
    func SignOut(){
        try? Auth.auth().signOut()
        self.userSession = nil
        
    }
}
