//
//  AuthTextfieldModifier.swift
//  Ps4Movil
//
//  Created by aresio on 19/11/23.
//

import SwiftUI
struct AuthTextfieldModifier:ViewModifier{
    func body(content:Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
}
