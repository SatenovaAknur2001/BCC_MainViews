//
//  EditPage.swift
//  BCC_Home
//
//  Created by Акнур on 19.07.2021.
//

import SwiftUI

struct EditPage: View {
    var body: some View {
        VStack{
            HStack()
            {
                VStack{
                    Circle()
                        .fill(Color.gray)
                        .frame(width: 64, height: 64)
                        .overlay(
                        
                        Image("edit"))
                        .frame(width: 120, height: 100)
                    
                }
                
                
                VStack(alignment: .leading, spacing: 10){
                    
                    Text("Данные профиля")
                        
                        .lineLimit(1)
                        .font(.custom("SFProDisplay-Regular", size: 16))
                        .frame(width: 140, height: 20)
                        
                    Rectangle()

                        .fill(Color(red: 214/255, green: 217/255, blue: 219/255, opacity: 1))
                        .frame(width: 163, height: 24)

                        .cornerRadius(16.0)
                        .font(.custom("SFProDisplay-Regular", size: 12))

                        .overlay(
                        Text("Профиль не потвержден")
                        .foregroundColor(.white)
                        .font(.custom("SFProDisplay-Regular", size: 12))
                        )
                }
                
               Image("edit2")
//                .frame(width: 23, height: 44)
                .frame(maxWidth: .infinity, minHeight: 44, maxHeight: 44)
                
            }
            
            VStack( alignment: .leading, spacing: 20){
                HStack(alignment: .center, spacing: 60){
                    Text("Почта:")
                        .font(.custom("SFProDisplay-Regular", size: 16))
                        .foregroundColor(Color(red: 77/255, green: 86/255, blue: 95/255, opacity: 1))
                    
                     Text("  Не указано")
                       
                        .font(.custom("Roboto-Italic", size: 16))
                        
                    Image("ed")
                        .frame(width: 16, height: 16)
                    
                }
                Divider()
                
                
                HStack(alignment: .center, spacing: 60){
                    Text("Пароль:")
                        .font(.custom("SFProDisplay-Regular", size: 16))
                        .foregroundColor(Color(red: 77/255, green: 86/255, blue: 95/255, opacity: 1))
                    
                     Text("Не указано")
                        .font(.custom("Roboto-Italic", size: 16))
                        
                    Image("ed")
                        .frame(width: 16, height: 16)
                   
                }
                
                Divider()
               
               
                HStack(alignment: .center, spacing: 60){
                    Text("Пароль:")
                        .font(.custom("SFProDisplay-Regular", size: 16))
                        .foregroundColor(Color(red: 77/255, green: 86/255, blue: 95/255, opacity: 1))
                    
                     Text("Не указано")
                        .font(.custom("Roboto-Italic", size: 16))
                        
                    Image("ed")
                        .frame(width: 16, height: 16)
                   
                }
                
                Divider()
               
                HStack(alignment: .center, spacing: 60){
                    Text("Пароль:")
                        .font(.custom("SFProDisplay-Regular", size: 16))
                        .foregroundColor(Color(red: 77/255, green: 86/255, blue: 95/255, opacity: 1))
                    
                     Text("Не указано")
                        .font(.custom("Roboto-Italic", size: 16))
                        
                    Image("ed")
                        .frame(width: 16, height: 16)
                   
                }
                
                Divider()
                
                HStack(alignment: .center, spacing: 60){
                    Text("Пароль:")
                        .font(.custom("SFProDisplay-Regular", size: 16))
                        .foregroundColor(Color(red: 77/255, green: 86/255, blue: 95/255, opacity: 1))
                    
                     Text("Не указано")
                        .font(.custom("Roboto-Italic", size: 16))
                        
                    Image("ed")
                        .frame(width: 16, height: 16)
                   
                }
                
                Divider()
               
            }
            
            
            .padding(22)
            
            .frame(maxWidth: .infinity, minHeight: 390, maxHeight: 390)
            .background(Color.white)
            .cornerRadius(12.0)
            .shadow(radius: 5)
            Spacer()
        }
        .padding()
    }
   
}

struct EditPage_Previews: PreviewProvider {
    static var previews: some View {
        EditPage()
    }
}
