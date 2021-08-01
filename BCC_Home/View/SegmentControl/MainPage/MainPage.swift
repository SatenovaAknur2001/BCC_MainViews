//
//  MainPage.swift
//  BCC_Home
//
//  Created by Акнур on 28.07.2021.
//

import SwiftUI


struct MainBannerItem: View {
    @State var showPopover = false
    var banner: MainBanner
    var body: some View {
      ZStack(alignment: .leading) {
        RoundedRectangle(cornerRadius: 12, style: .continuous)
            .fill(LinearGradient(gradient: Gradient(colors: banner.colors), startPoint: .bottomLeading, endPoint: .topTrailing))
        ConfigurationView(banner: banner)
      }
      .frame(width: 162, height: 162)
      .onTapGesture {
        showPopover = true
      }
      .overlay(
        PopPage(showPopover: $showPopover)
            .offset(y: 60)
//            .background(Color.black.opacity(0.3).ignoresSafeArea())
            .opacity(showPopover ? 1 : 0)
           
        , alignment: .trailing
      )
    }
    
    var configurationview: some View{
        Text(banner.title)
    }
}

struct MainBannerItem_Previews: PreviewProvider {
    static var previews: some View {
        MainBannerItem(banner: mainBanners[0])
        .padding()
    }
}

struct MainBanner: Identifiable {
  var id = UUID()
  var icon: String
  var title: String
  var subtitle: String
  var colors: [Color]
}
 
struct Announcoment: Identifiable {
    var id = UUID()
    
}

struct News: Identifiable{
    var id = UUID()
}

struct Apartment: Identifiable {
    let id = UUID()
}
struct Blog: Identifiable {
    let id = UUID()
}
let mainBanners = [
  MainBanner(icon: "magnifyingglass", title: "Поиск недвижимости", subtitle: "Купить\nили арендовать", colors: [Color(#colorLiteral(red: 0.9098039216, green: 0.8235294118, blue: 0.537254902, alpha: 1)), Color(#colorLiteral(red: 0.8666666667, green: 0.6156862745, blue: 0.2352941176, alpha: 1))]),
  MainBanner(icon: "plus", title: "Разместить\nобъявление", subtitle: "Продать или сдать\nв аренду", colors: [Color(#colorLiteral(red: 0.4784313725, green: 0.7921568627, blue: 0.5843137255, alpha: 1)), Color(#colorLiteral(red: 0.2196078431, green: 0.4862745098, blue: 0.3333333333, alpha: 1))]),
  MainBanner(icon: "calendar", title: "Рассчитать ипотеку", subtitle: "Продать или сдать\nв аренду", colors: [Color(#colorLiteral(red: 0.4784313725, green: 0.6784313725, blue: 0.7921568627, alpha: 1)), Color(#colorLiteral(red: 0.2196078431, green: 0.262745098, blue: 0.4862745098, alpha: 1))]),
  MainBanner(icon: "plus", title: "Партнерам", subtitle: "Продать или сдать\nв аренду", colors: [Color(#colorLiteral(red: 0.7921568627, green: 0.4784313725, blue: 0.5921568627, alpha: 1)), Color(#colorLiteral(red: 0.4352941176, green: 0.2196078431, blue: 0.4862745098, alpha: 1))]),
  MainBanner(icon: "plus", title: "Рекламодателям", subtitle: "Продать или сдать\nв аренду", colors: [Color(#colorLiteral(red: 0.9098039216, green: 0.8235294118, blue: 0.537254902, alpha: 1)), Color(#colorLiteral(red: 0.8666666667, green: 0.6156862745, blue: 0.2352941176, alpha: 1))]),
  MainBanner(icon: "plus", title: "Пакет документов", subtitle: "Продать или сдать\nв аренду", colors: [Color(#colorLiteral(red: 0.4784313725, green: 0.7921568627, blue: 0.5843137255, alpha: 1)), Color(#colorLiteral(red: 0.2196078431, green: 0.4862745098, blue: 0.3333333333, alpha: 1))]),
  MainBanner(icon: "plus", title: "Блог", subtitle: "Продать или сдать\nв аренду", colors: [Color(#colorLiteral(red: 0.4784313725, green: 0.6784313725, blue: 0.7921568627, alpha: 1)), Color(#colorLiteral(red: 0.2196078431, green: 0.262745098, blue: 0.4862745098, alpha: 1))]),
    MainBanner(icon: "plus", title: "Партнерам", subtitle: "Продать или сдать\nв аренду", colors: [Color(#colorLiteral(red: 0.7921568627, green: 0.4784313725, blue: 0.5921568627, alpha: 1)), Color(#colorLiteral(red: 0.4352941176, green: 0.2196078431, blue: 0.4862745098, alpha: 1))]),
]


struct ConfigurationView: View {
    let banner: MainBanner
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: banner.icon)
            Spacer()
            Text(banner.title)
                .font(.system(size: 18))
            Spacer()
            Text(banner.subtitle)
                .font(.system(size: 14))
        }
        .padding(12)
        .foregroundColor(.white)
    }
}
