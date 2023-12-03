//
//  CircleImage.swift
//  Ps4Movil
//
//  Created by aresio on 2/11/23.
//

import SwiftUI

struct CircleImage: View {
    var image:String
    var width:CGFloat
    var height:CGFloat
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: width,height: height)
            .clipShape(Circle())
    }
}
