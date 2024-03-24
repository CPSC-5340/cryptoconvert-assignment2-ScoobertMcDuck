//
//  NavigationView.swift
//  Assignment2
//
//  Created by Charlotte Varnum on 3/24/24.
//

import SwiftUI

struct HomepageView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("World Currency Exchange") {
                    Converter()
                }
                NavigationLink("Crypto Exchange") {
                    CryptoView()
                }
            }
            .navigationTitle("Conversion App")
        }
        
    }
}

#Preview {
    HomepageView()
}
