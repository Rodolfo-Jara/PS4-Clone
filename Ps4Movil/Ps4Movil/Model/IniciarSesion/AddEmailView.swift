//
//  AddEmailView.swift
//  Ps4Movil
//
//  Created by aresio on 19/11/23.
//

import SwiftUI

struct AddEmailView: View {
    @EnvironmentObject
            var registerViewModel:RegisterViewModel
        //@State var email=""
        @Environment (\.dismiss) var dismiss
        var body: some View {
            
            NavigationStack{
                
                VStack(spacing: 12) {
                    Image("LogoPs") // Reemplaza con el nombre de tu imagen de logo de PlayStation
                        .resizable()
                        .frame(width: 150, height: 150)
                        .padding(.bottom, 30)
                    
                    Text("Agrega un correo electronico")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.top)
                    Text("Utilizará este correo electrónico para iniciar sesión en su cuenta")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.horizontal,24)
                    TextField("Email",text:$registerViewModel.email)
                        .autocapitalization(.none)
                        .modifier(AuthTextfieldModifier())
                    
                    
                    NavigationLink {
                        CreateUsernameView()
                            .navigationBarBackButtonHidden()
                        
                    } label: {
                        Text("Next")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 44)
                            .background(Color(.systemBlue))
                            .cornerRadius(8)
                    }

                    
                    /*Button {
                        
                    } label: {
                      
                    }*/
                    
                    Spacer()

                    
                }//End VStack main
                .toolbar{
                    ToolbarItem(placement:.navigationBarLeading) {
                        Image(systemName: "chevron.left")
                            .imageScale(.large)
                            .onTapGesture {
                                self.dismiss()
                            }
                    }
                }
                
            }//End NavigationStack
            
           
        }
    }
