//
//  AnnouncementCardView.swift
//  BCC_Home
//
//  Created by Акнур on 28.07.2021.
//

import SwiftUI

struct AnnouncementCardView: View {
    var card: Announcoment
    var body: some View {
        VStack {
            VStack{
            Image("holl2")
                .resizable()
                .scaledToFill()
            }
            .frame(width: 247, height: 124)
//            VStack(alignment: .leading, spacing: 10){
            VStack(spacing: 10){
            Text("21 000 000 ₸")
                .font(.system(size: 18))
                .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                .multilineTextAlignment(.leading)
            
       
            Text("656 250 ₸/м²")
                .font(.system(size: 12))
                .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.6745098039, blue: 0.6901960784, alpha: 1)))
                .multilineTextAlignment(.leading)
            }
            
        
            VStack(spacing: 10){
            HStack{
                Text("\(1) - комн")
                Divider().frame(maxHeight: 20)
                Text("32 м²")
                Divider().frame(maxHeight: 20)
                Text("3-этаж")
            
            }
            Text("Алмалинский район, ул. Абая, 152")
                .lineLimit(2)
                .font(.system(size: 12))
                .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.6745098039, blue: 0.6901960784, alpha: 1)))
            }
        }
        .frame(width: 232, height: 272)
        .background(Color.white)
        .cornerRadius(12.0)
        .shadow(radius: 5)
    }
}

struct AnnouncementCardView_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementCardView(card: Announcoment())
    }
}
