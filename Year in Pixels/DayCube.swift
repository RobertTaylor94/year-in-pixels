//
//  DayCube.swift
//  Year in Pixels
//
//  Created by Robert Taylor on 02/11/2023.
//

import SwiftUI

struct DayCube: View {
    var body: some View {
        
        @State var fillColor = Color.white
        
        Rectangle()
            .frame(width: 20.0, height: 20.0)
            .foregroundColor(fillColor)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
    }
}

struct MyProvider: PreviewProvider {
    static var previews: some View {
        DayCube()
            .previewLayout(.sizeThatFits)
    }
}
