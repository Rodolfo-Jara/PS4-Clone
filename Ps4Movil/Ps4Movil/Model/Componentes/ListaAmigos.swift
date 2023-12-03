//
//  ListaAmigos.swift
//  Ps4Movil
//
//  Created by aresio on 19/11/23.
//

import Foundation
struct User:Identifiable,Codable,Hashable {
    let id:String
    var username:String
    var profileImageUrl:String?
    var fullname:String?
    var nickname:String?
    var onlineOfline:String?
}

extension User{
    static var MOCK_USERS:[User]=[
        .init(id: UUID().uuidString, username: "Razor328", profileImageUrl: "Perfil2", fullname: "Mr Garou", nickname: "Razor328",onlineOfline:"Online"),
        
        .init(id: UUID().uuidString, username: "Same", profileImageUrl: "Perfil3", fullname: "AngelOvejita", nickname: "Same",onlineOfline:"Online"),
        
        .init(id: UUID().uuidString, username: "Mumusita", profileImageUrl: "Perfil4", fullname: "La Muuuuuu", nickname: "Mumusita",onlineOfline:"Ofline"),
        
        .init(id: UUID().uuidString, username: "LordRiden", profileImageUrl: "Perfil5", fullname: "El Lord P", nickname: "LordRiden",onlineOfline:"Ofline"),
        
        .init(id: UUID().uuidString, username: "Sakuta", profileImageUrl: "Perfil6", fullname: "Dylan Prepucio", nickname: "Sakuta",onlineOfline:"Ofline"),
        
        .init(id: UUID().uuidString, username: "ElPintor", profileImageUrl: "Perfil7", fullname: "ElPintorHamer", nickname: "ElPintor",onlineOfline:"Online"),
        
        .init(id: UUID().uuidString, username: "Patroclo", profileImageUrl: "Perfil8", fullname: "Patroclo el malo", nickname: "Patroclo",onlineOfline:"Online")
    ]
}
