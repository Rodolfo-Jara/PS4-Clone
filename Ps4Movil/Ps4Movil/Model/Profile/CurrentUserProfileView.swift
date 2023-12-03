//
//  CurrentUserProfileView.swift
//  Ps4Movil
//
//  Created by aresio on 19/11/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) {
                    // Barra de herramientas superior 2
                    VStack {
                        Image("Perfil1")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 4))
                            .shadow(radius: 10)

                        Text("Pikachu156")
                            .font(.title)
                            .padding()

                        Text("Mate156")
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
                        RectanguloConImagenCurrentUser(nombreCurrentUser: "Game1")
                        RectanguloConImagenCurrentUser(nombreCurrentUser: "Game2")
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
                    HStack{
                        RectanguloConImagenCurrentUser(nombreCurrentUser: "Game3")
                        RectanguloConImagenCurrentUser(nombreCurrentUser: "Game4")
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

struct RectanguloConImagenCurrentUser: View {
    var nombreCurrentUser: String

    var body: some View {
        VStack {
            Image(nombreCurrentUser) // Reemplaza con el nombre real de la imagen
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

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView()
    }
}
