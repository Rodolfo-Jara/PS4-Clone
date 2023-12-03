//
//  NoticiasCell.swift
//  Ps4Movil
//
//  Created by aresio on 2/11/23.
//

import SwiftUI

struct NoticiasCell: View {
    var body: some View {
        VStack(spacing:12){
            VStack(spacing:15){
                //Pic and name
                HStack{
                    CircleImage(image: "PerfilN1", width: 40, height: 40)
                    Text("Call of duty")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Spacer()
                }//End HStack Perfil Noticia
                .padding(.leading,8)
                
                //Post Image
                Image("FondoN1")
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                
                //Descripcion
                HStack {
                    Text("Moder Warfare III     ").fontWeight(.semibold) +
                    Text("Preparate para el nuevo modo de warzone zombies, tu y tus amigos tienen q sobrevivir a los demas jugadores y a los zombies y se el unico en sobrevivir a la extraccion.")
                }
                .font(.footnote)
                .padding(.leading,8)
                .padding(.top,1)
                
                //Button actions
                HStack {
                    //text time
                    Text("5h ago")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,8)
                        .padding(.top,1)
                    
                    Spacer()
                    Button {
                        
                    } label:  {
                        Image(systemName: "hand.thumbsup")
                    }
                    
                }//End HStack
                .foregroundColor(.black)
                .padding(.leading,8)
                .padding(.top,4)
                
            }//End Vstack Noticia 1
            VStack(spacing:15){
                //Pic and name
                HStack{
                    CircleImage(image: "PerfilN2", width: 40, height: 40)
                    Text("Ubisoft R6")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Spacer()
                }//End HStack Perfil Noticia
                .padding(.leading,8)
                
                //Post Image
                Image("FondoN2")
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                
                //Descripcion
                HStack {
                    Text("Rainbow Six     ").fontWeight(.semibold) +
                    Text("Preparate para la colaboracion la serie de netflix 'La casa de Papel', ya que viene la nueva skin para el Agente Vigil.")
                }
                .font(.footnote)
                .padding(.leading,8)
                .padding(.top,1)
                
                //Button actions
                HStack {
                    //text time
                    Text("10h ago")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,8)
                        .padding(.top,1)
                    
                    Spacer()
                    Button {
                        
                    } label:  {
                        Image(systemName: "hand.thumbsup")
                    }
                    
                }//End HStack
                .foregroundColor(.black)
                .padding(.leading,8)
                .padding(.top,4)
                
            }//End Vstack Noticia 2
            VStack(spacing:15){
                //Pic and name
                HStack{
                    CircleImage(image: "PerfilN3", width: 40, height: 40)
                    Text("Battlefield")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Spacer()
                }//End HStack Perfil Noticia
                .padding(.leading,8)
                
                //Post Image
                Image("FondoN3")
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                
                //Descripcion
                HStack {
                    Text("Battlefield 2042    ").fontWeight(.semibold) +
                    Text("Preparate para la llegada del nuevo modo de juego Portal, ya que es una modalidad que pueden enfentarse diferentes facciones como los soldados modernos vs soldados de la segunda guerra mundial.")
                }
                .font(.footnote)
                .padding(.leading,8)
                .padding(.top,1)
                
                //Button actions
                HStack {
                    //text time
                    Text("15h ago")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,8)
                        .padding(.top,1)
                    
                    Spacer()
                    Button {
                        
                    } label:  {
                        Image(systemName: "hand.thumbsup")
                    }
                    
                }//End HStack
                .foregroundColor(.black)
                .padding(.leading,8)
                .padding(.top,4)
                
            }//End Vstack Noticia 3
            VStack(spacing:15){
                //Pic and name
                HStack{
                    CircleImage(image: "PerfilN4", width: 40, height: 40)
                    Text("Rockstar Games")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Spacer()
                }//End HStack Perfil Noticia
                .padding(.leading,8)
                
                //Post Image
                Image("FondoN4")
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                
                //Descripcion
                HStack {
                    Text("Grand Theft Auto V   ").fontWeight(.semibold) +
                    Text("Preparate para la llegada del nuevo dlc gta 5 online 'El contrato', que viene como nuevos modos de juego, recompensas dobleXP y nuevos vehiculos. ")
                }
                .font(.footnote)
                .padding(.leading,8)
                .padding(.top,1)
                
                //Button actions
                HStack {
                    //text time
                    Text("20h ago")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,8)
                        .padding(.top,1)
                    
                    Spacer()
                    Button {
                        
                    } label:  {
                        Image(systemName: "hand.thumbsup")
                    }
                    
                }//End HStack
                .foregroundColor(.black)
                .padding(.leading,8)
                .padding(.top,4)
                
            }//End Vstack Noticia 4
            VStack(spacing:15){
                //Pic and name
                HStack{
                    CircleImage(image: "PerfilN5", width: 40, height: 40)
                    Text("Gajin WTH")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Spacer()
                }//End HStack Perfil Noticia
                .padding(.leading,8)
                
                //Post Image
                Image("FondoN5")
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                
                //Descripcion
                HStack {
                    Text("War Thunder  ").fontWeight(.semibold) +
                    Text("Preparate para el nuevo aniversario 11 del War thunder, ya que viene con descuentos en todos los vehiculos y viene el iconico Tanque Muas que solo se consigue en la semana del aniversario, no te pierdas.")
                }
                .font(.footnote)
                .padding(.leading,8)
                .padding(.top,1)
                
                //Button actions
                HStack {
                    //text time
                    Text("20h ago")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,8)
                        .padding(.top,1)
                    
                    Spacer()
                    Button {
                        
                    } label:  {
                        Image(systemName: "hand.thumbsup")
                    }
                    
                }//End HStack
                .foregroundColor(.black)
                .padding(.leading,8)
                .padding(.top,4)
                
            }//End Vstack Noticia 4
        }//End Vstack general
    }
}

struct NoticiasCell_Previews: PreviewProvider {
    static var previews: some View {
        NoticiasCell()
    }
}
