//
//  MainTabView.swift
//  Ps4Movil
//
//  Created by aresio on 2/11/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            InicioView()
                .tabItem {
                    Image(systemName: "gamecontroller")
                }
            NoticiasView()
                .tabItem {
                    Image(systemName: "safari")
                }
            TiendaView()
                .tabItem {
                    Image(systemName: "cart")
                }
            BibliotecaView()
                .tabItem {
                    Image(systemName: "square.grid.3x2")
                }
            BuscadorView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
        }//End TabView
        .accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
