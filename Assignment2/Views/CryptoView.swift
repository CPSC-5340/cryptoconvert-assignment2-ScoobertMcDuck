//
//  CryptoView.swift
//  Assignment2
//
//  Created by Charlotte Varnum on 3/24/24.
//

import SwiftUI


struct CryptoView: View {
    @State private var amount = 1
    @FocusState private var isFocused: Bool
    
    var body: some View {
        let amountDollar = Double(amount) * 66306.80
        let amountETH = Double(amount) * 19.41
        let amountT = Double(amount) * 66306.80
        let amountBNB = Double(amount) * 116.95
        let amountCoin = Double(amount) * 104990.09
        let amountXRP = Double(amount) * 66306.80
        VStack {
            HStack {

                Text("Bitcoin")
                TextField("Amount", value: $amount, format: .number )
                    .focused($isFocused)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.phonePad)
            }
            Spacer()
            List {
                HStack {
                    Text("US Dollar")
                    Spacer()
                    Text(String(format: "%0.2f", amountDollar))
                }
                HStack {
                    Text("Ethereum")
                    Spacer()
                    Text(String(format: "%0.2f", amountETH))
                }
                HStack {
                    Text("Tether")
                    Spacer()
                    Text(String(format: "%0.2f", amountT))
                }
                HStack {
                    Text("BNB")
                    Spacer()
                    Text(String(format: "%0.2f", amountBNB))
                }
                HStack {
                    Text("USD Coin")
                    Spacer()
                    Text(String(format: "%0.2f", amountCoin))
                }
                HStack {
                    Text("XRP")
                    Spacer()
                    Text(String(format: "%0.2f", amountXRP))
                }
            }
        }
        .onTapGesture {
            isFocused = false;
        }
    }
}

#Preview {
    CryptoView()
}
