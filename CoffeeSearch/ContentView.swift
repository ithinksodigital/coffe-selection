//
//  ContentView.swift
//  CoffeeSearch
//
//  Created by Rafal Pawelec on 23/06/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var coffeeVM: CoffeeViewModel
    var body: some View {
        
        VStack(spacing: 30) {
            VStack(alignment: .leading) {
                Text("Coffees")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Browse our selection of the fines coffees")
            }
            
            VStack(alignment: .leading) {
                TextField("Search", text:
                            $coffeeVM.searchText)
                .font(.body)
                .padding()
                .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.2662717301)))
                .cornerRadius(20)
                .onChange(of: coffeeVM.searchText)
                {
                    text in
                    coffeeVM.filterContent()
                }
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 20)
            
        }
        ScrollView {
            if coffeeVM.filteredCoffees.count > 0 {
                ForEach(coffeeVM.filteredCoffees) { coffee in
                    CoffeeRow(coffee: coffee)
                }
            }
            else {
                Text("No coffee found 😰")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CoffeeViewModel())
    }
}
