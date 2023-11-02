//
//  YearGrid.swift
//  Year in Pixels
//
//  Created by Robert Taylor on 02/11/2023.
//

import SwiftUI

struct YearGrid: View {
    var body: some View {
        HStack(alignment: .top, spacing: 1){
            YearColumn(days: 31, month: "J")
            YearColumn(days: 28, month: "F")
            YearColumn(days: 31, month: "M")
            YearColumn(days: 30, month: "A")
            YearColumn(days: 31, month: "M")
            YearColumn(days: 30, month: "J")
            YearColumn(days: 31, month: "J")
            YearColumn(days: 31, month: "A")
            YearColumn(days: 30, month: "S")
            YearColumn(days: 31, month: "O")
            YearColumn(days: 30, month: "N")
            YearColumn(days: 31, month: "D")
        }
    }
}

struct YearColumn: View {
    
    @State var days: Int
    @State var month: String
    
    var body: some View {
        
        VStack(spacing: 1){
            Text(month)
                .padding(1)
            ForEach(0..<days, id: \.self){_ in
                DayCube()
            }
        }
    }
}

#Preview {
    YearGrid()
}
