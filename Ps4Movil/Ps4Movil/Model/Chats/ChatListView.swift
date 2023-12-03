import SwiftUI

struct ChatListView: View {
    private let ImageGrup = ["Grupo1", "Grupo2", "Perfil10"]
    private let TitulosGrupos = ["LaRatonera", "CedaPug", "EmiKukis156"]
    private let CantidadGrupo = ["5/10", "5/10", "1/4"]
    private let TitulosMensajes = ["LaRatonera", "CedaPug", "EmiKukis156"]
    private let MensajeUltimo = ["Chamagozo creo un grupo de voz", "Alancito envio una imagen", "Unete al grupo de voz"]
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Grupos")) {
                    ForEach(0..<ImageGrup.count) { index in
                        NavigationLink(destination: VoiceChatDetailView(
                            groupID: index,
                            tituloGrup: TitulosGrupos[index],
                            cantidadGrup: CantidadGrupo[index]
                        )) {
                            VoiceChatCellView(groupID: index,tituloGrup: TitulosGrupos[index],                            cantidadGrup: CantidadGrupo[index])
                        }
                    }
                }

                Section(header: Text("Mensajes")) {
                    ForEach(0..<ImageGrup.count) { index in
                        NavigationLink(destination: ChatDetailView(
                            chatID: index,
                            tituloMens: TitulosMensajes[index],
                            mensajeUlt: MensajeUltimo[index]
                        )) {
                            MessageCellView(messageID: index,tituloMens: TitulosMensajes[index],                            mensajeUlt: MensajeUltimo[index])
                        }
                    }
                }
            }
            .navigationBarTitle("Chats")
        }
    }
}

struct ChatDetailView: View {
    var chatID: Int
    var tituloMens: String
    var mensajeUlt: String

    

    var body: some View {
        VStack {
            Text(tituloMens)
                .font(.title)
                .padding()

            // Contenido del chat
        }
        .navigationBarTitle(tituloMens, displayMode: .inline)
    }
}

struct VoiceChatDetailView: View {
    var groupID: Int
    var tituloGrup: String
    var cantidadGrup: String

    var body: some View {
        VStack {
            Text(tituloGrup)
                .font(.title)
                .padding()

            // Contenido del grupo de voz
        }
        .navigationBarTitle(tituloGrup, displayMode: .inline)
    }
}

/*struct ChatCellView: View {
    var chatID: Int
    var tituloMens: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(tituloMens)
                .font(.headline)

            Text("Último mensaje en el chat \(chatID)")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
    }
}*/

struct VoiceChatCellView: View {
    var groupID: Int
    var tituloGrup: String
    var cantidadGrup: String

    var body: some View {
        HStack {
            GroupImage(groupID: groupID)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .padding(.trailing, 8)

            VStack(alignment: .leading) {
                Text(tituloGrup)
                    .font(.headline)

                Text(cantidadGrup)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}

struct MessageCellView: View {
    var messageID: Int
    var tituloMens: String
    var mensajeUlt: String

    var body: some View {
        HStack {
            MessageImage(messageID: messageID)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .padding(.trailing, 8)

            VStack(alignment: .leading) {
                Text(tituloMens)
                    .font(.headline)

                Text(mensajeUlt)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}

struct GroupImage: View {
    private let ImageGrup = ["Grupo1", "Grupo2", "Perfil10"] // Reemplaza con los nombres reales de tus fotos
    var groupID: Int

    var body: some View {
        Image(ImageGrup[groupID])
            .resizable()
            .frame(width: 70, height: 70)
    }
}

struct MessageImage: View {
    private let ImageGrup = ["Grupo1", "Grupo2", "Perfil10"] // Reemplaza con los nombres reales de tus fotos
    var messageID: Int

    var body: some View {
        Image(ImageGrup[messageID])
            .resizable()
            .frame(width: 70, height: 70)
    }
}

struct ChatListView_Previews: PreviewProvider {
    static var previews: some View {
        ChatListView()
    }
}
