//
//  TiendaCell.swift
//  Ps4Movil
//
//  Created by aresio on 1/12/23.
//

import SwiftUI

struct TiendaCell: View {
    @State private var currentIndex = 0
    @State private var offset: CGFloat = 0
    private let Games1 = ["Game21", "Game22", "Game23"]
    private let Precios1 = ["150$", "120$", "100$"]
    private let Games2 = ["Game15", "Game12", "Game13"]
    private let Precios2 = ["70$", "55$", "90$"]
    private let Games3 = ["Game24", "Game25", "Game26"]
    private let Precios3 = ["50$", "20$", "80$"]
    private let Games4 = ["Game28", "Game29", "Game30"]
    private let Precios4 = ["Gratis", "Gratis", "Gratis"]
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image("LogoStore")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("PlaySationStore")
                }
            .navigationBarBackButtonHidden()

            Spacer()

            Button {
                
            } label: {
                CircleImage(image: "LogoPlus", width: 35, height: 35)
                }
            .navigationBarBackButtonHidden()
            
            Button {
            } label: {
                Image(systemName: "heart")
                }
            Button {
                
            } label: {
                Image(systemName: "line.horizontal.3")
                }
        }//Barra de Comienzo fin
        .padding()
        .background(Color(UIColor.systemBackground))
        HStack {
            Text("Mas Reciente")
                .font(.title2)
                .fontWeight(.semibold)
        }
        .padding()
        
        VStack(spacing:15){
            //Post Image
            Image("Promo1")
            .resizable()
            .scaledToFill()
            .frame(height: 200)
            
            //Descripcion
            HStack {
                Text("Promocion Fin de Año:   ")
                    .fontWeight(.semibold)
                    .font(.title3)
                + Text("Despidete de un buen año con la mejores ofertas en esta gran seleccionde juegos")
            }
            //Button actions
            HStack {
                Button {
                } label:  {
                    Text("Ahorra Ya")
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .fontWeight(.semibold)
                        .frame(width: 90,height: 30)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black,lineWidth: 4))
                }
            }//End HStack
            .foregroundColor(.black)
            .padding(.leading,8)
            .padding(.top,4)
            
        }//End Vstack
        .padding()
        VStack {
            // Segunda fila
                    HStack {
                        RectanguloConImagenTienda(nombreImagenTienda: "Game21")
                        RectanguloConImagenTienda(nombreImagenTienda: "Game2")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
                    HStack {
                        RectanguloConImagenTienda(nombreImagenTienda: "Game23")
                        RectanguloConImagenTienda(nombreImagenTienda: "Game4")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
        }
        .padding()
        VStack {
            Text("Mejores 10 juegos de tu pais")
                .font(.title2)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<Games1.count) { index in
                        VStack {
                            Image(Games1[index])
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))

                            Text(Precios1[index])
                                .font(.title3)
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                    }
                }
            }
            // Otro contenido que desees mostrar
            Text("Amplia tus juegos")
                .font(.title2)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<Games2.count) { index in
                        VStack {
                            Image(Games2[index])
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))

                            Text(Precios2[index])
                                .font(.title3)
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                    }
                }
            }
            // Otro contenido que desees mostrar
            Text("Proximamente")
                .font(.title2)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<Games3.count) { index in
                        VStack {
                            Image(Games3[index])
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))

                            Text(Precios3[index])
                                .font(.title3)
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                    }
                }
            }
            // Otro contenido que desees mostrar
            Text("Demos")
                .font(.title2)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<Games4.count) { index in
                        VStack {
                            Image(Games4[index])
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))

                            Text(Precios4[index])
                                .font(.title3)
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                    }
                }
            }
        }
        VStack(spacing:15){
            //Post Image
            Image("Promo2")
            .resizable()
            .scaledToFill()
            .frame(height: 200)
            
            //Descripcion
            HStack {
                Text("Juegos del mes por PLUS+:   ")
                    .fontWeight(.semibold)
                    .font(.title3)
                + Text("Contra el complemento plus para q tengas estos juegos gratis y para jugar online con tu amigos")
            }
            //Button actions
            HStack {
                Button {
                } label:  {
                    Text("Ver Mas")
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .fontWeight(.semibold)
                        .frame(width: 90,height: 30)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black,lineWidth: 4))
                }
            }//End HStack
            .foregroundColor(.black)
            .padding(.leading,8)
            .padding(.top,4)
            
        }//End Vstack
        .padding()
        
        VStack(spacing:15){
            //Post Image
            Image("Promo3")
            .resizable()
            .scaledToFill()
            .frame(height: 200)
            
            //Descripcion
            HStack {
                Text("PlaySation Star    ")
                    .fontWeight(.semibold)
                    .font(.title3)
                + Text("Inscribete gratis y juega y gana recompensas")
            }
            //Button actions
            HStack {
                Button {
                } label:  {
                    Text("Ver mas")
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .fontWeight(.semibold)
                        .frame(width: 90,height: 30)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black,lineWidth: 4))
                }
            }//End HStack
            .foregroundColor(.black)
            .padding(.leading,8)
            .padding(.top,4)
            
        }//End Vstack
        .padding()
        VStack {
            HStack {
                Text("Ver mas")
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            // Segunda fila
                    HStack {
                        RectanguloConText(nombreText: "Todos los juegos PS5")
                        RectanguloConText(nombreText: "Todos los juegos PS4")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fontWeight(.semibold)
                    .font(.title3)
                    HStack {
                        RectanguloConText(nombreText: "Descuentos")
                        RectanguloConText(nombreText: "Complementos")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fontWeight(.semibold)
                    .font(.title3)
        }
    }
}
struct RectanguloConImagenTienda: View {
        var nombreImagenTienda: String

        var body: some View {
            VStack {
                Image(nombreImagenTienda) // Reemplaza con el nombre real de la imagen
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
struct RectanguloConText: View {
        var nombreText: String

        var body: some View {
            VStack {
                Text(nombreText) // Reemplaza con el nombre real de la imagen
                    .frame(width: 150, height: 120)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))

                // Otro contenido que desees mostrar dentro del rectángulo

            }
            .frame(maxWidth: .infinity, alignment: .leading) // Asegura que la celda ocupe todo el ancho disponible
            .padding()
        }
    }
struct TiendaCell_Previews: PreviewProvider {
    static var previews: some View {
        TiendaCell()
    }
}
