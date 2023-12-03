//
//  BuscadorCell.swift
//  Ps4Movil
//
//  Created by aresio on 19/11/23.
//

import SwiftUI

struct BuscadorCell: View {
    @State private var search:String=""
    var body: some View {
                VStack {
                    HStack {
                            Text("Juegos Tendencias")
                                .font(.title2)
                                .padding()
                            }
                        
                    // Primera fila
                            HStack {
                                RectanguloConImagenBuscador(nombreImagenBusca: "Game22")
                                RectanguloConImagenBuscador(nombreImagenBusca: "Game24")
                            }
                            .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
                            HStack {
                                RectanguloConImagenBuscador(nombreImagenBusca: "Game6")
                                RectanguloConImagenBuscador(nombreImagenBusca: "Game8")
                            }
                            .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible

                            HStack {
                                RectanguloConImagenBuscador(nombreImagenBusca: "Game1")
                                RectanguloConImagenBuscador(nombreImagenBusca: "Game2")
                            }
                            .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible

                            HStack {
                                RectanguloConImagenBuscador(nombreImagenBusca: "Game14")
                                RectanguloConImagenBuscador(nombreImagenBusca: "Game16")
                            }
                            .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
                    
                            HStack {
                                RectanguloConImagenBuscador(nombreImagenBusca: "Game18")
                                RectanguloConImagenBuscador(nombreImagenBusca: "Game26")
                            }
                            .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
                }
                .searchable(text: $search,prompt: "Search...")
        }
}
struct RectanguloConImagenBuscador: View {
        var nombreImagenBusca: String

        var body: some View {
            VStack {
                Image(nombreImagenBusca) // Reemplaza con el nombre real de la imagen
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 170, height: 160)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))

                // Otro contenido que desees mostrar dentro del rectángulo

            }
            .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
            .padding()
        }
    }

struct BuscadorCell_Previews: PreviewProvider {
    static var previews: some View {
        BuscadorCell()
    }
}
