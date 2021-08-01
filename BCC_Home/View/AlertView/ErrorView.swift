//
//  errorView.swift
//  BCC_Home
//
//  Created by Акнур on 19.07.2021.
//

import SwiftUI

struct ErrorView: View {
    var body: some View {
        VStack{
            VStack{
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 3){
                        
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 100)
                            .padding(20)
                        
                        
                        Text("Произошла ошибка во время проведения транзакции")
                            
                        
//                            .font(.custom("SF.ttf", size: 16))
                            .fontWeight(.medium)
                            
                            //                    .padding(.bottom, 280)
                            .frame(width: 247, height: 48)
                            .foregroundColor(Color("red"))
                            .multilineTextAlignment(.center)
                            
                    
                   
                    Spacer()
                    
                    VStack(alignment: .center, spacing: 6){
                        Text("Попробуйте произести оплату заново.")
                            .multilineTextAlignment(.center)
                            .font(.custom("Roboto-Light.ttf", size: 18))
                            
                        Text("Проверьте лимит на онлайн транзакции.")
                            .multilineTextAlignment(.center)
                            .font(.custom("SDProDisplay-Medium", size: 18))
                        
                        Spacer()
                    }
                    
                    VStack(alignment: .center, spacing: 10){
                        Text("Статус вашего объявления остается прежним")
                            .multilineTextAlignment(.center)
                            .font(.custom("SFProDisplay-Bold", size: 20))
    
                        
                        Text("Условия выдачи займа по предварительному решению могут отличаться от условий установленных окончательным решением полномочного органа Банка ")
                            .multilineTextAlignment(.center)
                            .font(.custom("SFProDisplay-Medium", size: 12))
                            .lineSpacing(1.12)
                     Spacer()
                    }
                }
                
                .frame(maxWidth: .infinity, minHeight: 457, maxHeight: 457)
                .background(Color(red: 250/255, green: 250/255, blue: 250/255, opacity: 1))
                .cornerRadius(25.0)
               
                
                
            }
            .padding(22)
            .frame(maxWidth: .infinity, minHeight: 505, maxHeight: 505)
            .background(Color.white)
            .cornerRadius(25.0)
            .shadow(radius: 5)
            
        }.padding()
    }
}

struct errorView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ErrorView()
            
        }
    }
}
