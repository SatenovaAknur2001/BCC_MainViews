//
//  NewsView.swift
//  BCC_Home
//
//  Created by Акнур on 28.07.2021.
//

import SwiftUI

struct NewsView: View {
    var card: News
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
        

            Text("Новости")
                .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.6745098039, blue: 0.6901960784, alpha: 1)))
                .font(.custom("SFProDisplay-Normal", size: 14))
            Text("Сумма маткапиатала\n вырастет в 2021 году")
                .lineLimit(2)
                .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                .font(.custom("SFProDisplay-Normal", size: 16))
            Text("25 ноября 2020 ")
                .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.6745098039, blue: 0.6901960784, alpha: 1)))
                .font(.custom("SFProDisplay-Normal", size: 14))

        }
        .padding(.trailing)
        .frame(width: 247, height: 152)
        .background(Color.white)
        .cornerRadius(8.0)
        .shadow(radius: 4)
    }
}

struct NewsView_Preview: PreviewProvider {
    static var previews: some View {
        NewsView(card: News())
    }
}
