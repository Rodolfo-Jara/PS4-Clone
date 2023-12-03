//
//  InicioCell.swift
//  Ps4Movil
//
//  Created by aresio on 8/11/23.
//

import SwiftUI

struct InicioCell: View {
    @State private var currentIndex = 0
    @State private var offset: CGFloat = 0
    private let Games = ["Game1", "Game2", "Game3"]
    private let Jugadores = ["RaulGamer01(Ps5)", "Roxy_Magi2002(Ps4)", "Alan156(Ps5)"] 

    var body: some View {
        VStack {
            Text("Amigos Jugando")
                .font(.title)
                .padding()

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<Games.count) { index in
                        VStack {
                            Image(Games[index])
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 200)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))

                            Text(Jugadores[index])
                                .font(.title3)
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                    }
                }
            }



            // Otro contenido que desees mostrar
            Text("Jugados Ultimamente")
                .font(.title)
                .padding()
        }
        .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
        
        HStack {
                   Image("Game4") // Reemplaza con el nombre real de la foto del juego reciente
                       .resizable()
                       .aspectRatio(contentMode: .fill)
                       .frame(width: 150, height: 100)
                       .clipShape(RoundedRectangle(cornerRadius: 15))
                       .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))

                   VStack(alignment: .leading, spacing: 8) {
                       Text("Fornite")
                           .font(.headline)

                       Text("Horas Jugadas: 1500") // Reemplaza con las horas reales jugadas
                           .font(.subheadline)

                       Text("Trofeos: 15") // Reemplaza con la cantidad real de trofeos
                           .font(.subheadline)
                   }
                   .padding(.leading, 8)
               }
               .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
               .padding()
        HStack {
                   Image("Game5") // Reemplaza con el nombre real de la foto del juego reciente
                       .resizable()
                       .aspectRatio(contentMode: .fill)
                       .frame(width: 150, height: 100)
                       .clipShape(RoundedRectangle(cornerRadius: 15))
                       .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))

                   VStack(alignment: .leading, spacing: 8) {
                       Text("Persona 5")
                           .font(.headline)

                       Text("Horas Jugadas: 200") // Reemplaza con las horas reales jugadas
                           .font(.subheadline)

                       Text("Trofeos: 25") // Reemplaza con la cantidad real de trofeos
                           .font(.subheadline)
                   }
                   .padding(.leading, 8)
               }
               .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
               .padding()
        HStack {
                   Image("Game6") // Reemplaza con el nombre real de la foto del juego reciente
                       .resizable()
                       .aspectRatio(contentMode: .fill)
                       .frame(width: 150, height: 100)
                       .clipShape(RoundedRectangle(cornerRadius: 15))
                       .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))

                   VStack(alignment: .leading, spacing: 8) {
                       Text("Dead by Daylight")
                           .font(.headline)

                       Text("Horas Jugadas: 100") // Reemplaza con las horas reales jugadas
                           .font(.subheadline)

                       Text("Trofeos: 30") // Reemplaza con la cantidad real de trofeos
                           .font(.subheadline)
                   }
                   .padding(.leading, 8)
               }
               .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
               .padding()
    }
}



struct InicioCell_Previews: PreviewProvider {
    static var previews: some View {
        InicioCell()
    }
}
