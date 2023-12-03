//
//  BibliotecaCell.swift
//  Ps4Movil
//
//  Created by aresio on 9/11/23.
//

import SwiftUI

struct BibliotecaCell: View {
    var body: some View {
                VStack {
                    HStack {
                            Text("Jugados")
                                .font(.title)
                                .padding()
                                
                            }
                        
                    // Primera fila
                            HStack {
                                RectanguloConImagenBiblio(nombreImagenBiblio: "Game1")
                                RectanguloConImagenBiblio(nombreImagenBiblio: "Game2")
                            }
                            .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
                            HStack {
                                RectanguloConImagenBiblio(nombreImagenBiblio: "Game23")
                                RectanguloConImagenBiblio(nombreImagenBiblio: "Game4")
                            }
                            .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible

                            HStack {
                                RectanguloConImagenBiblio(nombreImagenBiblio: "Game25")
                                RectanguloConImagenBiblio(nombreImagenBiblio: "Game26")
                            }
                            .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible

                            HStack {
                                RectanguloConImagenBiblio(nombreImagenBiblio: "Game28")
                                RectanguloConImagenBiblio(nombreImagenBiblio: "Game8")
                            }
                            .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
                    
                            HStack {
                                RectanguloConImagenBiblio(nombreImagenBiblio: "Game29")
                                RectanguloConImagenBiblio(nombreImagenBiblio: "Game10")
                            }
                            .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
                }
        Spacer()
        VStack {
            HStack {
                    Text("Comprados")
                        .font(.title)
                        .padding()
                        
                    }
                
            // Segunda fila
                    HStack {
                        RectanguloConImagenBiblio(nombreImagenBiblio: "Game21")
                        RectanguloConImagenBiblio(nombreImagenBiblio: "Game12")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
                    HStack {
                        RectanguloConImagenBiblio(nombreImagenBiblio: "Game13")
                        RectanguloConImagenBiblio(nombreImagenBiblio: "Game14")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible

                    HStack {
                        RectanguloConImagenBiblio(nombreImagenBiblio: "Game15")
                        RectanguloConImagenBiblio(nombreImagenBiblio: "Game16")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible

                    HStack {
                        RectanguloConImagenBiblio(nombreImagenBiblio: "Game27")
                        RectanguloConImagenBiblio(nombreImagenBiblio: "Game18")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
            
                    HStack {
                        RectanguloConImagenBiblio(nombreImagenBiblio: "Game19")
                        RectanguloConImagenBiblio(nombreImagenBiblio: "Game30")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
        }
        

        }
}
    struct RectanguloConImagenBiblio: View {
        var nombreImagenBiblio: String

        var body: some View {
            VStack {
                Image(nombreImagenBiblio) // Reemplaza con el nombre real de la imagen
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

struct BibliotecaCell_Previews: PreviewProvider {
    static var previews: some View {
        BibliotecaCell()
    }
}
