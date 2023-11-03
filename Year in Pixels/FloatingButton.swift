//
//  FloatingButton.swift
//  Year in Pixels
//
//  Created by Robert Taylor on 31/10/2023.
//

import Foundation
import SwiftUI

struct FloatingButton: View {
//    let icon: String
    
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Spacer()
                Button(action: {
                    isPresented.toggle()
                }){
                    Image(systemName: "plus")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                }
                .frame(width: 80, height: 80)
                .background(Color.red)
                .cornerRadius(50)
                .shadow(radius: 20)
                .sheet(isPresented: $isPresented, onDismiss: didDismiss) {
                    AddDay()
                }
                Spacer()
            }
        }
    }
    
    func didDismiss() {
        
    }
    
}

#Preview {
    FloatingButton(isPresented: true)
}
