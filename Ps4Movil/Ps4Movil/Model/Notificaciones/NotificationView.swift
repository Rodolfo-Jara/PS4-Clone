//
//  NotificationView.swift
//  Ps4Movil
//
//  Created by aresio on 26/11/23.
//

import SwiftUI


struct NotificationView: View {
    private let images = ["Grupo1", "Perfil9", "Perfil10"]
        private let remitentes = ["LaRatonera", "AriOkiEz", "EmiKukis156"]
        private let mensajes = ["Chamagozo creó un grupo de voz", "Unite a la partida necesito tu ayuda", "Te envia una foto de mi buil para genshi Impact"]
        private let horas = ["5 min", "3 H", "1D"]

        var body: some View {
            List {
                ForEach(0..<images.count) { index in
                    NotificationCellView(
                        image: images[index],
                        remitente: remitentes[index],
                        mensaje: mensajes[index],
                        hora: horas[index]
                    )
                }
            }
            .navigationBarTitle("Notificaciones")
        }
    }

    struct NotificationCellView: View {
        var image: String
        var remitente: String
        var mensaje: String
        var hora: String

        var body: some View {
            HStack {
                NotificationImage(image: image)
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                    .padding(.trailing, 8)

                VStack(alignment: .leading) {
                    Text(remitente)
                        .font(.headline)

                    Text(mensaje)
                        .font(.subheadline)
                        .foregroundColor(.gray)

                    Text(hora)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding()
        }
    }

    struct NotificationImage: View {
        var image: String

        var body: some View {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
        }
    }

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}

