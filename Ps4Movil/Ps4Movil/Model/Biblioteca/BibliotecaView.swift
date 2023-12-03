//
//  BibliotecaView.swift
//  Ps4Movil
//
//  Created by aresio on 9/11/23.
//

import SwiftUI

struct BibliotecaView: View {
    var body: some View {
            NavigationView {
                ScrollView{
                    LazyVStack {
                        ForEach(0...0,id:\.self){post in
                            BibliotecaCell()
                        }//End for
                    }//End LazyVStack
                    .padding(.top,10)
                }//End Scrollview
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading){
                        NavigationLink {
                            ChatListView()
                        } label: {
                            Image(systemName: "message")
                            }
                        .navigationBarBackButtonHidden()

                        
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink {
                            VerAmigosView()
                        } label: {
                            Image(systemName: "person.2")
                            }
                        .navigationBarBackButtonHidden()
                    }
                }
            }//End NavigationView
        }
}

struct BibliotecaView_Previews: PreviewProvider {
    static var previews: some View {
        BibliotecaView()
    }
}
