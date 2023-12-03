//
//  VerAmigosView.swift
//  Ps4Movil
//
//  Created by aresio on 19/11/23.
//

import SwiftUI

struct VerAmigosView: View {
    @State private var search:String=""
       var body: some View {
           NavigationStack{
               ScrollView{
                   LazyVStack{
                       ForEach(User.MOCK_USERS){user in
                           NavigationLink(value: user){
                               HStack{
                                   //Image
                                   CircleImage(image: user.profileImageUrl ?? "", width: 40, height: 40)
                                   //Name and nickname
                                   VStack{
                                       Text(user.nickname ?? "")
                                           .fontWeight(.semibold)
                                       Text(user.onlineOfline ?? "")
                                           .font(.footnote)
                                   }
                                   //Alignment leading
                                   Spacer()
                               }//End HStack
                               .padding(.leading,10)
                           }//Fin NavigationLink[
                       }
                   }//End LazyVStack
                   .searchable(text: $search,prompt: "Search...")
               }//End Scrollview
               .navigationDestination(for: User.self, destination:{user in
                   ProfileView(user:user)})
               .navigationTitle("Explore Friends")
               .navigationBarTitleDisplayMode(.inline)
           }//End NavigationStack
           
       }
   }
