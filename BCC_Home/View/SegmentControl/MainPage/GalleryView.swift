//
//  GalleryView.swift
//  BCC_Home
//
//  Created by Акнур on 28.07.2021.
//

import SwiftUI

struct GalleryView: View {
 
    var body: some View {
         ZStack{
            Image("adress")
                .resizable()
                .scaledToFill()
                .frame(width: 343, height: 516)
                .clipped()
            VStack {
                HStack {
                    Spacer()
                    Text("Реклама")
                        .padding()
                        .background(Capsule().fill(Color.white))
                        .font(.system(size: 12))
                        
                    
                }
                    Spacer()
                        
            }
            .padding()
            VStack(alignment: .leading, spacing: 20.0) {
            Text("Скидки в ЖК “Абая 130")
                .font(.system(size: 18))
            Text("Уникальный Жилищный Комплекс “Абая 130” построен в одном из самых комфортабельных районов города\n Алматы, наслаждайтесь своей жизнью.")
                .font(.system(size: 16))
            
                Button(action: {
          
                          print("vdd")
                          }) {
          
                              HStack{
          
                                  Text("Посмотреть ЖК")
                                      .font(.custom("SFProDisplay-Regular", size: 16))
                                      .foregroundColor(Color.white)
                              }
                              .frame(width: 166, height: 48)
                              .background(Color(red: 39/255, green: 174/255, blue: 96/255, opacity: 1))
                              .cornerRadius(12.0)
                          }
                
            }
            
            .foregroundColor(Color.white)
        }
         .frame(width: 343, height: 516)
         .clipShape(RoundedRectangle(cornerRadius: 12.0))
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}



//
