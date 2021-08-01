//
//  ApartmentView.swift
//  BCC_Home
//
//  Created by Акнур on 28.07.2021.
//

import SwiftUI
struct ApartmentView: View {
    var card: Apartment
    var body: some View {
        VStack {
            ZStack{
                Image("home")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 274, height: 155)
                    .padding(0)
                    .overlay(
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 20.0)
                                .frame(width: 55, height: 17, alignment: .topTrailing)
                                .padding()
                                .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.6745098039, blue: 0.6901960784, alpha: 1)))
                            
                            Text("Реклама")
                                .foregroundColor(Color.white)
                                .fontWeight(.light)
                                .font(.system(size: 10))
                        }
                        ,
                        alignment: .topTrailing
                        
                    )
                
                
            }
            
            VStack(alignment: .leading, spacing: -10){
                HStack{
                    Text("ЖК Мираж")
                        .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                        .fontWeight(.bold)
                        .font(.system(size: 16))
                        .padding(10)
                    
                    
                    Spacer()
                    Image("фольсфаген")
                        .frame(width: 32, height: 32)
                        .padding(.trailing)
                }
                Text("Класс: Бизнес")
                    .padding(10)
                
                Text("г.Алматы, Ауезовский район, ул.\nАбая, 130")
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .padding(10)
                    .font(.system(size: 12))
                    .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.6745098039, blue: 0.6901960784, alpha: 1)))
                
            }
            
            
            VStack(alignment: .leading){
                HStack(spacing: 42){
                    Text("1-комн")
                        .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                        .font(.system(size: 12))
                    Text("от 32 м²")
                        .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                        .font(.system(size: 12))
                    Text("от 6 млн ₸")
                        .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                        .font(.system(size: 12))
                    
                }
                Divider()
                HStack(spacing: 40){
                    Text("2-комн")
                        .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                        .font(.system(size: 12))
                    Text("от 64 м²")
                        .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                        .font(.system(size: 12))
                    Text("от 12 млн ₸")
                        .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                        .font(.system(size: 12))
                    
                }
                Divider()
                HStack(spacing: 40){
                    Text("3-комн")
                        .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                        .font(.system(size: 12))
                    Text("от 84 м²")
                        .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                        .font(.system(size: 12))
                    Text("от 19 млн ₸")
                        .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                        .font(.system(size: 12))
                    
                }
                Divider()
                HStack(spacing: 38){
                    Text("4-комн")
                        .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                        .font(.system(size: 12))
                    Text("от 119 м²")
                        .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                        .font(.system(size: 12))
                    Text("от 24 млн ₸")
                        .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                        .font(.system(size: 12))
                    
                }
                
            }
            .padding()
            
            Button(action: {
                print("sign up bin tapped")
                
            }) {
                HStack(alignment: .center){
                    
                    Text("Посмотреть 123 квартиры")
                        .font(.custom("SFProDisplay-Meduim", size: 12))
                        .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                }
                .frame(width: 243, height: 32)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                )
            }
            .padding()
        }
        .frame(width: 274, height: 474,alignment: .bottom)
        .background(Color.white)
        .cornerRadius(12.0)
        .shadow(radius: 5)
    }
}

struct ApartmentView_Previews: PreviewProvider {
    static var previews: some View {
        ApartmentView(card: Apartment())
    }
}
