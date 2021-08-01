//
//  PartnerPage.swift
//  BCC_Home
//
//  Created by Акнур on 28.07.2021.
//

import SwiftUI

struct PartnerPage: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false ){
        HStack {
           
            HStack {
                VStack{
                    
                    VStack(alignment: .leading, spacing: 24){
                    Text("Управляйте компанией")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        
                        Text("Ведите учет расходов\n компании и сотрудников,\n добавляя данные и\n обрабатывая платежи и\n счета")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .font(.system(size: 18))
                            .fontWeight(.regular)
                        
                        Button(action: {
                            print("sign up bin tapped")
                            
                        }) {
                            HStack(alignment: .center){
                                
                                Text("Зарегестрироваться")
                                    .font(.custom("SFProDisplay-Meduim", size: 12))
                                    .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                            }
                            .frame(width: 228, height: 56)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                            )
                        }
                        .padding()
                }
                }
                .frame(width: 276, height: 280)
                .background(Color.white)
                .cornerRadius(12.0)
                .shadow(radius: 5)
            }
            .padding()
            HStack {
                VStack{
                    
                    VStack(alignment: .leading, spacing: 24){
                    Text("Отслеживайте показатели, действия агентства и сотрудников онлайн")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        
                        
                        Text("Благодаря аналитике, выставляйте и отслеживайте\n KPI компании, совершенствуйте рабочие процессы       ")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .font(.system(size: 18))
                            .fontWeight(.regular)
                       
                     Spacer()
                    }
                }
                .frame(width: 276, height: 280)
                .background(Color.white)
                .cornerRadius(12.0)
                .shadow(radius: 5)
            }
            HStack {
                VStack{
                    
                    VStack(alignment: .leading, spacing: 24){
                    Text("Управляйте компанией")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        
                        Text("Ведите учет расходов\n компании и сотрудников,\n добавляя данные и\n обрабатывая платежи и\n счета")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .font(.system(size: 18))
                            .fontWeight(.regular)
                        
                        Button(action: {
                            print("sign up bin tapped")
                            
                        }) {
                            HStack(alignment: .center){
                                
                                Text("Зарегестрироваться")
                                    .font(.custom("SFProDisplay-Meduim", size: 12))
                                    .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                            }
                            .frame(width: 228, height: 56)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                            )
                        }
                        .padding()
                }
                }
                .frame(width: 276, height: 280)
                .background(Color.white)
                .cornerRadius(12.0)
                .shadow(radius: 5)
            }
        }
        }
    }
}

struct PartnerPage_Previews: PreviewProvider {
    static var previews: some View {
        PartnerPage()
    }
}
