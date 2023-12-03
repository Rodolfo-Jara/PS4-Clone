//
//  NoticiasView.swift
//  Ps4Movil
//
//  Created by aresio on 2/11/23.
//

import SwiftUI

struct NoticiasView: View {
    var body: some View {
            NavigationView {
                ScrollView{
                    LazyVStack {
                        ForEach(0...0,id:\.self){post in
                            NoticiasCell()
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

struct NoticiasView_Previews: PreviewProvider {
    static var previews: some View {
        NoticiasView()
    }
}
