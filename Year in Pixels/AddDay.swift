//
//  AddDay.swift
//  Year in Pixels
//
//  Created by Robert Taylor on 31/10/2023.
//

import SwiftUI

struct AddDay: View {
    @State private var date = Date()
    var body: some View {
        VStack {
            Text("How was your day?")
                .font(.title)
                .padding(20)
//            VStack {
//                DatePicker("Date", selection: $date, in: ...Date(), displayedComponents: [.date])
//                    .padding(20)
//            }
            Spacer()
        }
        
    }
}

#Preview {
    AddDay()
}
