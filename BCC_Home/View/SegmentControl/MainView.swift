//
//  MainPage.swift
//  BCC_Home
//
//  Created by Акнур on 27.07.2021.
//

import SwiftUI

struct MainView: View {
    //MARK:- PROPERTIES
    
    @State private var selectorIndex = 0
    @State private var numbers = ["Все","Ипотека","Партнерам"]
    @State private var showingPopover = false
    
    //MARK:- Initalizer
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.white
        
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: #colorLiteral(red: 0.3105178177, green: 0.6857181787, blue: 0.3804950416, alpha: 1)], for: .selected)
        
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: #colorLiteral(red: 0.6641477942, green: 0.675267458, blue: 0.6920555234, alpha: 1)], for: .normal)
    }
    //MARK:- Body
    var body: some View {
        
        ScrollView(.vertical,showsIndicators: false){
            VStack {
                Picker("Numbers", selection: $selectorIndex) {
                    ForEach(0 ..< numbers.count) { index in
                        Text(self.numbers[index]).tag(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
            }.padding()
            
            if selectorIndex == 0 {
                VStack{
                    Group{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(mainBanners){ banner in
                                    MainBannerItem(banner: banner)
                                }
                            }
                        }
//                        VStack{
//
                        
                        HStack {
                            Text("Полезные ссылки")
                                
                                .fontWeight(.heavy)
                                .font(.system(size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                            Spacer()
                            Text("Смотреть все")
                                .fontWeight(.medium)
                                .font(.system(size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 20){
                                ForEach(0 ..< 5) { item in
                                    BlogView(blog: Blog())
                                }
                            }.padding()
                        }
                        VStack(spacing: 20){
                        HStack {
                            Text("Ипотечные программы")
                                
                                .fontWeight(.heavy)
                                .font(.system(size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                            Spacer()
                            Text("Смотреть все")
                                .fontWeight(.medium)
                                .font(.system(size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                        }
                            
                      //TODO: - Добавить переменные
                        
                        
                        
                        //MARK: - Ипотечный калькулятор
                        CalculatorView()
                        }
                        Group{
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack(spacing: 20){
                                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                                        NewsView(card: News())
                                    }
                                    
                                }
                                .padding()
                            }
                            HStack {
                                Text("Горячие предложения")
                                    
                                    .fontWeight(.heavy)
                                    .font(.system(size: 20))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                                Spacer()
                                Text("Смотреть все")
                                    .fontWeight(.medium)
                                    .font(.system(size: 16))
                                    .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                            }
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack(spacing: 20){
                                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                                        AnnouncementCardView(card: Announcoment())
                                    }
                                    
                                }
                                .padding(.bottom)
                            }
                            .padding()
                            GalleryView()
                        }
                    }
                    
                    
                } .padding(.horizontal)
            }
            
            
            else if selectorIndex == 1 {
                VStack{
                    Group{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(mainBanners){ banner in
                                    MainBannerItem(banner: banner)
                                    
                                }
                                
                                
                            }
                        }
                        
                        HStack {
                            Text("Вторичное жилье")
                                
                                .fontWeight(.heavy)
                                .font(.system(size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                            Spacer()
                            Text("Смотреть все")
                                .fontWeight(.medium)
                                .font(.system(size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 20){
                                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                                    AnnouncementCardView(card: Announcoment())
                                }
                                
                            }
                            .padding(.bottom)
                        }
                        HStack {
                            Text("Горячие предложения")
                                
                                .fontWeight(.heavy)
                                .font(.system(size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                            Spacer()
                            Text("Смотреть все")
                                .fontWeight(.medium)
                                .font(.system(size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                        }
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 20){
                                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                                    AnnouncementCardView(card: Announcoment())
                                }
                                
                            }
                            .padding(.bottom)
                        }
                    }
                    Group{
                        HStack {
                            Text("Полезные ссылки")
                                
                                .fontWeight(.heavy)
                                .font(.system(size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                            Spacer()
                            Text("Смотреть все")
                                .fontWeight(.medium)
                                .font(.system(size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                        }
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 20){
                                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                                    NewsView(card: News())
                                }
                                
                            }
                            .padding(.bottom)
                        }
                        HStack {
                            
                            Text("Новые ЖК в Алматы")
                                
                                .fontWeight(.heavy)
                                .font(.system(size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                            Spacer()
                            Text("Смотреть все")
                                .fontWeight(.medium)
                                .font(.system(size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                        }
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 20){
                                ForEach(0 ..< 3) { item in
                                    ApartmentView(card: Apartment())
                                }
                                
                            }
                            .padding(.bottom)
                        }
                        HStack {
                            Text("Полезные ссылки")
                                
                                .fontWeight(.heavy)
                                .font(.system(size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                            Spacer()
                            
                            Text("Смотреть все")
                                .fontWeight(.medium)
                                .font(.system(size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                        }
                    }
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 20){
                            ForEach(0 ..< 5) { item in
                                BlogView(blog: Blog())
                            }
                        }.padding(.bottom)
                    }
                    VStack(spacing: 20){
                        GalleryView()
                        GOView()
                    }
                }
                .padding(.horizontal)
            }
            else {
                VStack{
                    Group{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(mainBanners){ banner in
                                    MainBannerItem(banner: banner)
                                }
                            }
                            .padding(10)
                        }
                    }
                    VStack(spacing: 20){
                        PartnerPage()
                        TextView()
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(newsBanners){ news in
                                    BotView(news: news)
                                }
                            }
                            .padding()
                        }
                        
                        LogoView()
                    }
                    
                }
            }
            Spacer()
        }.background(Color
                        .white
                        .edgesIgnoringSafeArea(.all))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}







