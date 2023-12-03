//
//  InicioView.swift
//  Ps4Movil
//
//  Created by aresio on 8/11/23.
//

import SwiftUI

struct InicioView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                VStack(spacing: 0) {
                    // Barra de herramientas superior 1
                    HStack {
                        NavigationLink {
                            ChatListView()
                        } label: {
                            Image(systemName: "message")
                            }
                        .navigationBarBackButtonHidden()

                        Spacer()

                        NavigationLink {
                            VerAmigosView()
                        } label: {
                            Image(systemName: "person.2")
                            }
                        .navigationBarBackButtonHidden()
                    }
                    .padding()
                    .background(Color(UIColor.systemBackground))
                    
                    // Barra de herramientas superior 2
                    HStack {
                        NavigationLink {
                            CurrentUserProfileView()
                        } label: {
                            CircleImage(image: "Perfil1", width: 50, height: 50)
                            Text("Pikachu156")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                
                            }
                        .navigationBarBackButtonHidden()

                        Spacer()

                        Button {
                            
                        } label: {
                            CircleImage(image: "LogoPs", width: 35, height: 35)
                            }
                        .navigationBarBackButtonHidden()
                        
                        NavigationLink {
                            NotificationView()
                        } label: {
                            Image(systemName: "bell")
                            }
                        .navigationBarBackButtonHidden()
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "gear")
                                .onTapGesture {
                                                AuthService
                                                .shared
                                                .SignOut()
                                    }
                            }
                        .navigationBarBackButtonHidden()
                    }
                    .padding()
                    .background(Color(UIColor.systemBackground))

                    //Contenido principal
                    ScrollView {
                        LazyVStack {
                            ForEach(0...0, id: \.self) { post in
                                InicioCell()
                            }
                        }
                        .padding(.top, 10)
                    }
                }

                

            }
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}



struct InicioView_Previews: PreviewProvider {
    static var previews: some View {
        InicioView()
    }
}
