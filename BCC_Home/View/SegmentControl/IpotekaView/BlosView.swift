//
//  BlogsView.swift
//  BCC_Home
//
//  Created by Акнур on 29.07.2021.
//


import SwiftUI

struct BlogsView: View {
    var advertisoing: AvertiseBanner
    var body: some View {
        VStack{
        AdvertiseView(adv: advertisoing)
        }.frame(width: 247, height: 172)
        .cornerRadius(12.0)
        .shadow(radius: 5)
    }
    
}

struct BlogsView_Previews: PreviewProvider {
    static var previews: some View {
        BlogsView(advertisoing: advertiseBanner[0])
    }
}
struct AvertiseBanner: Identifiable {
    let id = UUID()
    var colors: [Color]
    var title: String
}

let advertiseBanner = [

    AvertiseBanner(colors: [Color(#colorLiteral(red: 0.4784313725, green: 0.7921568627, blue: 0.5843137255, alpha: 1)), Color(#colorLiteral(red: 0.2196078431, green: 0.4862745098, blue: 0.3333333333, alpha: 1))], title: "При первом пополнении рекламного кабинета в BCC\nHome мы бесплатно\nподготовим рекламные\nпубликации, чтобы вы могли\nбыстро получить новых\nклиентов и покупателей."),
    AvertiseBanner(colors: [Color(#colorLiteral(red: 0.4784313725, green: 0.7921568627, blue: 0.5843137255, alpha: 1)), Color(#colorLiteral(red: 0.2196078431, green: 0.4862745098, blue: 0.3333333333, alpha: 1))], title: "Ключевой фактор успеха\nрекламы в BCC Home — \nкачественный контент.\nНаши авторы уже создали \nболее 2 000 успешных \nрекламных публикаций."),
    AvertiseBanner(colors: [Color(#colorLiteral(red: 0.4784313725, green: 0.7921568627, blue: 0.5843137255, alpha: 1)), Color(#colorLiteral(red: 0.2196078431, green: 0.4862745098, blue: 0.3333333333, alpha: 1))], title: "При первом пополнении рекламного кабинета в BCC\nHome мы бесплатно\nподготовим рекламные\nпубликации, чтобы вы могли\nбыстро получить новых\nклиентов и покупателей.")
   
]

struct AdvertiseView: View {
    let adv: AvertiseBanner
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(adv.title)
                .font(.system(size: 16))
                .foregroundColor(.white)
           
          
        }
        .padding(12)
//        .foregroundColor(.green)
    }
}

