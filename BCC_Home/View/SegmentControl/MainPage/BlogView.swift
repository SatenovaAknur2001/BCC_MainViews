//
//  BlogView.swift
//  BCC_Home
//
//  Created by Акнур on 28.07.2021.
//

import SwiftUI

struct BlogView: View {
    var blog: Blog
    var body: some View {
        VStack{
            ZStack{
                Image("last")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 274, height: 145)
                    .padding()
                    .overlay(
                        ZStack{
                            HStack(spacing: 13){
                                HStack(spacing: 5){
                              Image("eye")
                                Text("2.3K")
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 14))
                            }
                                HStack(spacing: 5){
                                    Image("heartt")
                                      Text("182")
                                          .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                          .font(.system(size: 14))
                                }
                            }
                        }
//                        }.padding(30)
                        .frame(width: 200, height: 33)
                        ,
                        alignment: .bottomLeading
                            
                    )
                   
            }
            VStack(alignment: .leading, spacing: 8){
                Text("Новости")
                    .font(.system(size: 14))
                    .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.6745098039, blue: 0.6901960784, alpha: 1)))
                
                Text("Выплаты партнерам за\nсделки без ипотеки в\nСибири: теперь и для\n крупных агентств")
                    .font(.system(size: 16))
                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                
                Text("25 ноябрь 2020")
                    .font(.system(size: 12))
                    .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.6745098039, blue: 0.6901960784, alpha: 1)))
                
            }
            .padding()
            
            
        }
        .frame(width: 247, height: 324,alignment: .bottom)
        .background(Color.white)
        .cornerRadius(12.0)
        .shadow(radius: 5)
    }
}

struct BlogView_Previews: PreviewProvider {
    static var previews: some View {
        BlogView(blog: Blog())
    }
}
