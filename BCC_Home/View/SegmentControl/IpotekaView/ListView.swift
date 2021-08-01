//
//  ListView.swift
//  BCC_Home
//
//  Created by Акнур on 29.07.2021.
//

import SwiftUI

struct ListView: View {
    var list: ListBanner
    var body: some View {

        HStack{
            ConfigurationList(list: list)
        }
        .frame(width: 343, height: 56)
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .cornerRadius(12.0)
        .shadow(radius: 1)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(list: listBanners[0])
    }
}

struct ListBanner: Identifiable {
    var id = UUID()
    var img: String
    var title: String
}

let listBanners = [
    ListBanner(img: "arr", title: "Сколько стоит реклама в BCC Home?"),
    ListBanner(img: "arr", title: " Какой минимальный платёж?"),
    ListBanner(img: "arr", title: "Что можно и нельзя рекламировать\nв BCC Home?"),
    ListBanner(img: "arr", title: "Кто увидит мою рекламу?\nКакие таргетинги есть?"),
    ListBanner(img: "arr", title: "К кому я могу обратиться\n за помощью с контентом??"),
    ListBanner(img: "arr", title: " Cколько нужно статей?"),
    ListBanner(img: "arr", title: "Как создать рекламную компанию?")
    
]


struct ConfigurationList: View {
    let list: ListBanner
    var body: some View {
        HStack(spacing: 30) {
            
            Spacer()
            Text(list.title)
                .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                .font(.system(size: 16))
            Spacer()
            Image(list.img)
                .font(.system(size: 14))
        }
        .padding(12)
        .foregroundColor(.white)
    }
}
