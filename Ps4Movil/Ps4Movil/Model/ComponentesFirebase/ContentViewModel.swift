//
//  ContentViewModel.swift
//  Ps4Movil
//
//  Created by aresio on 26/11/23.
//

import Foundation
import FirebaseAuth
import Combine
class ContentViewModel:ObservableObject{
    
    private let service = AuthService.shared
    @Published var userSession:FirebaseAuth.User?
    private var canceliable = Set<AnyCancellable>()
    init(){
        setupSuscriber()
    }
    func setupSuscriber(){
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
            
        }
        .store(in:&canceliable)
    }
}
