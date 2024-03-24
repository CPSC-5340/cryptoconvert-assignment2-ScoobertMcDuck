//
//  CryptoView.swift
//  Assignment2
//
//  Created by Charlotte Varnum on 3/24/24.
//

import SwiftUI


struct CryptoView: View {
    @State private var amount = 1

    
    var body: some View {
        var amountDollar = Double(amount) * 66306.80
        var amountETH = Double(amount) * 19.41
        var amountT = Double(amount) * 66306.80
        var amountBNB = Double(amount) * 116.95
        var amountCoin = Double(amount) * 104990.09
        var amountXRP = Double(amount) * 66306.80
        VStack {
            HStack {

                Text("Bitcoin")
                TextField("Amount", value: $amount, format: .number )
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
    }
}

#Preview {
    CryptoView()
}
