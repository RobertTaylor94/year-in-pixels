//
//  ContentView.swift
//  Year in Pixels
//
//  Created by Robert Taylor on 31/10/2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        VStack {
            HStack {
                Button(action: {}) {
                    Image(systemName: "arrowshape.left.circle")
                        .font(.system(size: 40))
                }
                
                YearGrid()
                
                Button(action: {}) {
                    Image(systemName: "arrowshape.right.circle")
                        .font(.system(size: 40))
                }
            }
            FloatingButton()
                .frame(height: 80)
                .padding(.bottom, 5.0)
        }
    }
    
    
    

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}



#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
