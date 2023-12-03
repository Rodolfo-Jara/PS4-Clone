//
//  CreateUsernameView.swift
//  Ps4Movil
//
//  Created by aresio on 19/11/23.
//

import SwiftUI

struct CreateUsernameView: View {
    @EnvironmentObject
        var registerViewModel:RegisterViewModel
    //@State var username=""
        @Environment (\.dismiss) var dismiss
        var body: some View {
            
            NavigationStack{
                
                VStack(spacing: 12) {
                    Image("LogoPs") // Reemplaza con el nombre de tu imagen de logo de PlayStation
                        .resizable()
                        .frame(width: 150, height: 150)
                        .padding(.bottom, 30)
                    
                    Text("Crea tu nombre de usuario")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.top)
                    Text("Elija un nombre de usuario para su nueva cuenta")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.horizontal,24)
                    TextField("Username",text: $registerViewModel.username)
                        .autocapitalization(.none)
                        .modifier(AuthTextfieldModifier())
                    
                    NavigationLink {
                        CreatePasswordView()
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
