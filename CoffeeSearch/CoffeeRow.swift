//
//  CoffeeRow.swift
//  CoffeeSearch
//
//  Created by Rafal Pawelec on 05/07/2023.
//

import SwiftUI

struct CoffeeRow: View {
    var coffee: Coffee
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Text("☕")
                    .font(.title)
                    .padding(.trailing, 12)
                VStack(alignment: .leading) {
                    Text(coffee.blendName)
                        .bold()
                    
                    VStack(alignment: .leading) {
                        Text("From \(coffee.origin)")
                        Text(coffee.notes).italic()
                    }
                    
                }
                .font(.caption)
            }
            Divider().padding(.bottom,
                              12).padding(.top, 8)
        }
        .padding(.horizontal, 30)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CoffeeRow_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeRow(coffee: coffeePreviewData)
    }
}
