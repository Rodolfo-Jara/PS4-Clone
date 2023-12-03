//
//  ProfileView.swift
//  Ps4Movil
//
//  Created by aresio on 10/11/23.
//

import SwiftUI

struct ProfileView: View {
    let user:User
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) {
                    // Barra de herramientas superior 2
                    VStack {
                        CircleImage(image: user.profileImageUrl ?? "", width: 70, height: 70)


                        Text(user.nickname ?? "")
                            .font(.title)
                            .padding()

                        Text(user.fullname ?? "")
                            .font(.headline)
                            .foregroundColor(.gray)

                        Divider()

                        VStack(alignment: .leading, spacing: 10) {
                            Text("Trofeos")
                                .font(.headline)
                                .padding(.bottom, 5)

                            Image("Trofeos")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 380, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
                    }
                    .padding()

                    // Filas de rectángulos con imágenes
                    HStack{
                        RectanguloConImagenProfile(nombreImagenProfile: "Game1")
                        RectanguloConImagenProfile(nombreImagenProfile: "Game2")
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
                    HStack{
                        RectanguloConImagenProfile(nombreImagenProfile: "Game3")
                        RectanguloConImagenProfile(nombreImagenProfile: "Game4")
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct RectanguloConImagenProfile: View {
    var nombreImagenProfile: String

    var body: some View {
        VStack {
            Image(nombreImagenProfile) // Reemplaza con el nombre real de la imagen
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 160, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))

            // Otro contenido que desees mostrar dentro del rectángulo

        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
    }
}

