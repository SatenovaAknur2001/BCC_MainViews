//
//  AppTabNavigation.swift
//  BCC_Home
//
//  Created by Акнур on 31.07.2021.
//

import SwiftUI

struct AppTabNavigation: View {
    @State var selection = 3
    var body: some View {
        TabView(selection: $selection) {
            MainView().tabItem { Label("Главная", image: "house") }.tag(1)
            EditPage().tabItem { Label("Поиск", image:  "search") }.tag(2)
            SuccessfullView().tabItem { Label("Подать", image:  "pplus") }.tag(3)
            ProfileView().tabItem { Label("Уведомления", image:  "bell") }.tag(4)
            MainView().tabItem { Label("Кабинет", image:  "profile") }.tag(5)
        }
    }
}

struct AppTabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppTabNavigation()
    }
}
