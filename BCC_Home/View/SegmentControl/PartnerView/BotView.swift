//
//  BotView.swift
//  BCC_Home
//
//  Created by Акнур on 29.07.2021.
//

import SwiftUI

struct BotView: View {
    var news: NewsBanner
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            CongigurationView(news: news)
        }
        .frame(width: 311, height: 156)
        .background(Color.white)
        .cornerRadius(12.0)
        .shadow(radius: 5)
    }
    var configurationView: some View{
        Text(news.title)
    }
}
    struct BotView_Previews: PreviewProvider {
        static var previews: some View {
            BotView(news: newsBanners[0] )
        }
    }
struct NewsBanner: Identifiable {
  var id = UUID()
  var title: String
  var subtitle: String
 
}
let newsBanners = [
    NewsBanner(title: "Публикуйте объявления", subtitle: "Быстро и легко подавайте объявления из личного кабинета BCC Home"),
    NewsBanner(title: "Получайте уведомления\nчерез чат-бот telegram\nв удобное время", subtitle: "Cмотрите подробную информацию\nпо интересующим предложениям"),
    NewsBanner(title: "Получайте уведомления через чат-бот telegram в удобное время", subtitle: "Cмотрите подробную информацию по интересующим предложениям"),
    NewsBanner(title: "Получайте уведомления через чат-бот telegram в удобное время", subtitle: "Cмотрите подробную информацию по интересующим предложениям"),
    NewsBanner(title: "Получайте уведомления через чат-бот telegram в удобное время", subtitle: "Cмотрите подробную информацию по интересующим предложениям")
]

struct CongigurationView: View{
    let news: NewsBanner
    var body: some View{
        VStack(alignment: .leading, spacing: 8){
            Text(news.title)
                .font(.system(size: 18))
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.4352941176, blue: 0.2509803922, alpha: 1)))
            
            Text(news.subtitle)
                .font(.system(size: 14))
                .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
        }
    }
}
