//
//  ProfileView.swift
//  BCC_Home
//
//  Created by Акнур on 25.07.2021.
//

import SwiftUI

struct ProfileView: View {
    
    @State var selectedTab: Trip = trips[0]
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    var body: some View {
        
        let gradient = Gradient(colors: [
            Color(red: 122/255, green: 202/255, blue: 149/255, opacity: 1),
            Color(red: 56/255, green: 124/255, blue: 85/255, opacity: 1)
        ])
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                
                VStack(spacing: 30){
                    HStack{
                        VStack{
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 64, height: 64)
                                .overlay(
                                    
                                    Image("person"))
                                .frame(width: 120, height: 100)
                        }
                        VStack(alignment: .leading){
                            Text("Бибигуль Тимуровна")
                                .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                                .font(.custom("SFProDisplay-Regular", size: 16))
                            
                            Text("temirlan.bcc@gmail.com")
                                .foregroundColor(Color(red: 169/255, green: 172/255, blue: 176/255, opacity: 1))
                                .font(.custom("SFProDisplay-Regular", size: 14))
                            
                            HStack( spacing: 8){
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 32, height: 32)
                                    .overlay(
                                        
                                        Image("messenger"))
                                    .frame(width: 18, height: 18)
                                
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 32, height: 32)
                                    .overlay(
                                        
                                        Image("ph"))
                                    .frame(width: 18, height: 18)
                                Spacer()
                            }
                            
                        }
                        
                        
                    }
                    
                    
                    VStack(alignment: .leading, spacing: 15){
                        HStack(alignment: .center, spacing: 85){
                            Text("Почта:")
                                .font(.custom("SFProDisplay-Regular", size: 16))
                                .foregroundColor(Color(red: 77/255, green: 86/255, blue: 95/255, opacity: 1))
                            
                            Text("temirlan.bcc@gmail.com")
                                
                                .font(.custom("Roboto-Italic", size: 16))
                                .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                            
                        }
                        Divider()
                        
                        HStack(alignment: .center, spacing: 20){
                            Text("Дата рождения")
                                .font(.custom("SFProDisplay-Regular", size: 16))
                                .foregroundColor(Color(red: 77/255, green: 86/255, blue: 95/255, opacity: 1))
                            
                            Text("23.01.1998")
                                
                                .font(.custom("Roboto-Italic", size: 16))
                                
                                .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                            
                        }
                        Divider()
                        
                        HStack(alignment: .center, spacing: 90){
                            Text("Город")
                                .font(.custom("SFProDisplay-Regular", size: 16))
                                .foregroundColor(Color(red: 77/255, green: 86/255, blue: 95/255, opacity: 1))
                            
                            Text("Алматы")
                                
                                .font(.custom("Roboto-Italic", size: 16))
                                .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                            
                        }
                        Divider()
                        
                        HStack(alignment: .center, spacing: 17){
                            Text("Номер  телефона:")
                                .lineLimit(2)
                                .font(.custom("SFProDisplay-Regular", size: 16))
                                .foregroundColor(Color(red: 77/255, green: 86/255, blue: 95/255, opacity: 1))
                            //                        .frame(maxWidth: .infinity, minHeight: 10, maxHeight: 10)
                            
                            Text("+7(776)-107-2001")
                                
                                .font(.custom("Roboto-Italic", size: 16))
                                .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                            
                        }
                        
                        
                    }
                    .padding(22)
                    .frame(maxWidth: .infinity, minHeight: 195, maxHeight: 195)
                    .background(Color.white)
                    .cornerRadius(12.0)
                    .shadow(radius: 5)
                    //            Spacer()
                    
                    Text("Объявления")
                        .foregroundColor(Color(red: 39/255, green: 33/255, blue: 77/255, opacity: 1))
                        
                        
                        .fontWeight(.black)
                        .font(.system(size: 20))
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 40)
                }
                VStack(spacing: 35){
                    
                    VStack(spacing: 80){
                        
                        
                        VStack(spacing: 0) {
                            
                ZStack{
                                
                    VStack{
                                    
                        VStack {
                                        
                            GeometryReader{proxy in
                                            
                        let frame = proxy.frame(in: .global)
                                        
                                    TabView(selection: $selectedTab){
                                                
                                    ForEach(tips){trip in
                                                    
                                    Image(trip.image)
                                                       
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .scaledToFill()
                                    .frame(maxWidth: .infinity, minHeight: 225, maxHeight: 225)
                                                        .cornerRadius(20)
                                                        .tag(trip)
                                                }
                                                .overlay(
                                                    HStack(spacing: -75){
                                                        Circle()
                                                            .fill(Color.white)
                                                            .frame(width: 32, height: 32)
                                                            .overlay(
                                                            
                                                            Image("naizagai"))
                                                            .frame(width: 120, height: 100)
                                                        
                                                        Circle()
                                                            .fill(Color.white)
                                                            .frame(width: 32, height: 32)
                                                            .overlay(
                                                            
                                                            Image("korona"))
                                                            .frame(width: 120, height: 100)
                                                        
                                                        
                                                        Circle()
                                                            .fill(Color.white)
                                                            .frame(width: 32, height: 32)
                                                            .overlay(
                                                            
                                                            Image("360"))
                                                            .frame(width: 120, height: 100)
                                                        
                                                    }, alignment: .topLeading
                                                   
                                                )
                                                
                                            }
//
                                                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                                        }
                                        
                                        .frame(height: UIScreen.main.bounds.height / 3.0)
                                        
                                    }
                                   
//
                                    .padding(.horizontal)
                                }
                                .padding(-25)
                            }
                            //
                            VStack(alignment: .leading, spacing: 10){
                                Text("мкр Коктобе, Сагадат Нурмагамбетова 138/2")
                                    //
                                    .font(.custom("SFProDisplay-Regular", size: 12))
                                    .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                                
                                Text("21 000 000 ₸")
                                    //
                                    .font(.custom("SFProDisplay-Regular", size: 18))
                                    .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                                
                                Text("656 250 ₸/м²")
                                    //
                                    .font(.custom("SFProDisplay-Regular", size: 12))
                                    .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                                
                                Text("Доступно в ипотеку")
                                    //                        .multilineTextAlignment(.leading)
                                    .font(.custom("SFProDisplay-Regular", size: 14))
                                    .foregroundColor(Color(red: 0/255, green: 111/255, blue: 64/255, opacity: 1))
                                
                                HStack{
                                    Text("1 - комн")
                                        .font(.custom("SFProDisplay-Regular", size: 14))
                                        .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                                    
                                    Divider().frame(height: 20)
                                    Text("32 м²")
                                        .font(.custom("SFProDisplay-Regular", size: 14))
                                        .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                                    Divider().frame(height: 20)
                                    Text(" 3/9 этаж")
                                        .font(.custom("SFProDisplay-Regular", size: 14))
                                        .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                                }
                                
                                
                                HStack{
                                    //                        Capsule()
                                    //                            .fill(Color(red: 0/255, green: 111/255, blue: 64/255, opacity: 1))
                                    //                            .fill(LinearGradient(Col))
                                    LinearGradient(gradient: gradient, startPoint: .bottomTrailing, endPoint: .topLeading)
                                        .cornerRadius(16.0)
                                        .frame(width: 90, height: 24)
                                        .overlay(
                                            Text("Мебелирована")
                                                .foregroundColor(Color.white)
                                                .font(.custom("SFProDisplay-Regular", size: 10))
                                        )
                                    
                                    //                        Capsule()
                                    //                            .fill(Color(red: 0/255, green: 111/255, blue: 64/255, opacity: 1))
                                    
                                    LinearGradient(gradient: gradient, startPoint: .bottomTrailing, endPoint: .topLeading)
                                        .cornerRadius(16.0)
                                        .frame(width: 90, height: 24)
                                        .overlay(
                                            Text("Свежий ремонт")
                                                
                                                .foregroundColor(Color.white)
                                                .font(.custom("SFProDisplay-Regular", size: 12))
                                        )
                                    //                            Capsule()
                                    //                                .fill(Color(red: 0/255, green: 111/255, blue: 64/255, opacity: 1))
                                    LinearGradient(gradient: gradient, startPoint: .bottomTrailing, endPoint: .topLeading)
                                        .cornerRadius(16.0)
                                        .frame(width: 29, height: 24)
                                        .overlay(
                                            Text("+1")
                                                
                                                .foregroundColor(Color.white)
                                                .font(.custom("SFProDisplay-Regular", size: 12))
                                        )
                                    
                                    
                                }
                                VStack{
                                HStack(spacing: 100){
                                    HStack{
                                        Image("show")
                                    
                                        HStack( spacing: 12){
                                            Text("1482")
                                                .font(.custom("SFProDisplay-Regular", size: 12))
                                                .foregroundColor(Color(red: 169/255, green: 172/255, blue:  176/255, opacity: 1))
                                            
                                            Text("25 ноября")
                                                .font(.custom("SFProDisplay-Regular", size: 12))
                                                .foregroundColor(Color(red: 169/255, green: 172/255, blue:  176/255, opacity: 1))
                                        }
                                        
                                        
                                    }
                                    
                                    HStack(spacing: 8){
                                        Capsule()
                                            .fill(Color.white)
                                            .frame(width: 40, height: 40)
                                            .shadow(radius: 25)
                                            .overlay(
                                                Image("heart")
                                                
                                            )
                                        
                                        Capsule()
                                            .fill(Color.white)
                                            .frame(width: 40, height: 40)
                                            .shadow(radius: 25)
                                            .overlay(
                                                Image("line")
                                                
                                            )
                                        
                                        
                                    }
                                    
                                }
                                }
                                Spacer()
                            }
                            
                        }
                        
                        .frame(maxWidth: .infinity, minHeight: 435, maxHeight: 435)
                        
                        .background(Color.white)
                        .cornerRadius(12.0)
                        .shadow(radius: 5)
                        
                        
                    }
                    
                    VStack(spacing: 30){
                        
                        
                        VStack(spacing: 0) {
                            ZStack{
                                VStack{
                                    VStack {
                                        
                                        GeometryReader{proxy in
                                            
                                            let frame = proxy.frame(in: .global)
                                            
                                            
                                            TabView(selection: $selectedTab){
                                                
                                                ForEach(trips){trip in
                                                    
                                                    Image(trip.image)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .scaledToFill()
                                                        .frame(maxWidth: .infinity, minHeight: 225, maxHeight: 225)
                                                        .cornerRadius(20)
                                                        .tag(trip)
                                                    
                                                  
                                                
                                                }
                                                .overlay(
                                                    HStack(spacing: -75){
                                                        Circle()
                                                            .fill(Color.white)
                                                            .frame(width: 32, height: 32)
                                                            .overlay(
                                                            
                                                            Image("naizagai"))
                                                            .frame(width: 120, height: 100)
                                                        
                                                        Circle()
                                                            .fill(Color.white)
                                                            .frame(width: 32, height: 32)
                                                            .overlay(
                                                            
                                                            Image("korona"))
                                                            .frame(width: 120, height: 100)
                                                        
                                                        
                                                        Circle()
                                                            .fill(Color.white)
                                                            .frame(width: 32, height: 32)
                                                            .overlay(
                                                            
                                                            Image("360"))
                                                            .frame(width: 120, height: 100)
                                                        
                                                    }, alignment: .topLeading
                                                   
                                                )
                                            }
                                            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                                        }
                                        
                                        .frame(height: UIScreen.main.bounds.height / 3.0)
                                        
                                   
                                    }
                                   
//
                                    .padding(.horizontal)
                                }
                                .padding(-25)
                                            
                                       
                            }
                            //
                            
                            VStack(alignment: .leading, spacing: 10){
                                Text("мкр Коктобе, Сагадат Нурмагамбетова 138/2")
                                    //                        .multilineTextAlignment(.leading)
                                    .font(.custom("SFProDisplay-Regular", size: 12))
                                    .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                                
                                Text("21 000 000 ₸")
                                    //                        .multilineTextAlignment(.leading)
                                    .font(.custom("SFProDisplay-Regular", size: 18))
                                    .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                                
                                Text("656 250 ₸/м²")
                                    //                        .multilineTextAlignment(.leading)
                                    .font(.custom("SFProDisplay-Regular", size: 12))
                                    .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                                
                                Text("Доступно в ипотеку")
                                    //                        .multilineTextAlignment(.leading)
                                    .font(.custom("SFProDisplay-Regular", size: 14))
                                    .foregroundColor(Color(red: 0/255, green: 111/255, blue: 64/255, opacity: 1))
                                
                                HStack{
                                    Text("1 - комн")
                                        .font(.custom("SFProDisplay-Regular", size: 14))
                                        .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                                    
                                    Divider().frame(height: 20)
                                    Text("32 м²")
                                        .font(.custom("SFProDisplay-Regular", size: 14))
                                        .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                                    Divider().frame(height: 20)
                                    Text(" 3/9 этаж")
                                        .font(.custom("SFProDisplay-Regular", size: 14))
                                        .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                                }
                                
                                
                                HStack{
                                    //                        Capsule()
                                    //                            .fill(Color(red: 0/255, green: 111/255, blue: 64/255, opacity: 1))
                                    //                            .fill(LinearGradient(Col))
                                    LinearGradient(gradient: gradient, startPoint: .bottomTrailing, endPoint: .topLeading)
                                        .cornerRadius(16.0)
                                        .frame(width: 90, height: 24)
                                        .overlay(
                                            Text("Мебелирована")
                                                .foregroundColor(Color.white)
                                                .font(.custom("SFProDisplay-Regular", size: 10))
                                        )
                                    
                                    //                        Capsule()
                                    //                            .fill(Color(red: 0/255, green: 111/255, blue: 64/255, opacity: 1))
                                    
                                    LinearGradient(gradient: gradient, startPoint: .bottomTrailing, endPoint: .topLeading)
                                        .cornerRadius(16.0)
                                        .frame(width: 90, height: 24)
                                        .overlay(
                                            Text("Свежий ремонт")
                                                
                                                .foregroundColor(Color.white)
                                                .font(.custom("SFProDisplay-Regular", size: 12))
                                        )
                                    //                            Capsule()
                                    //                                .fill(Color(red: 0/255, green: 111/255, blue: 64/255, opacity: 1))
                                    LinearGradient(gradient: gradient, startPoint: .bottomTrailing, endPoint: .topLeading)
                                        .cornerRadius(16.0)
                                        .frame(width: 29, height: 24)
                                        .overlay(
                                            Text("+1")
                                                
                                                .foregroundColor(Color.white)
                                                .font(.custom("SFProDisplay-Regular", size: 12))
                                        )
                                    
                                    
                                }
                                VStack{
                                HStack(spacing: 100){
                                    HStack{
                                        Image("show")
                                        
                                        HStack( spacing: 12){
                                            Text("1482")
                                                .font(.custom("SFProDisplay-Regular", size: 12))
                                                .foregroundColor(Color(red: 169/255, green: 172/255, blue:  176/255, opacity: 1))
                                            
                                            Text("25 ноября")
                                                .font(.custom("SFProDisplay-Regular", size: 12))
                                                .foregroundColor(Color(red: 169/255, green: 172/255, blue:  176/255, opacity: 1))
                                        }
                                        
                                    }
                                    HStack(spacing: 8){
                                        Capsule()
                                            .fill(Color.white)
                                            .frame(width: 40, height: 40)
                                            .shadow(radius: 25)
                                            .overlay(
                                                Image("heart")
                                                
                                            )
                                        
                                        Capsule()
                                            .fill(Color.white)
                                            .frame(width: 40, height: 40)
                                            .shadow(radius: 25)
                                            .overlay(
                                                Image("line")
                                                
                                            )
                                        
                                        
                                    }
                                }
                                }
                                Spacer()
                            }
                            
                        }
                        
                        .frame(maxWidth: .infinity, minHeight: 435, maxHeight: 435)
                        
                        .background(Color.white)
                        .cornerRadius(12.0)
                        .shadow(radius: 5)
                        
                    }
                    
                }
               
            }
            .padding()
            
        }
        
    }
    
    func getIndex()->Int{
        
        let index = trips.firstIndex { (trip) -> Bool in
            return selectedTab.id == trip.id
        } ?? 0
        
        return index
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
