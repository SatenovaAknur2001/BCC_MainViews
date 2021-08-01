//
//  ContentView.swift
//  BCC_Home
//
//  Created by Акнур on 19.07.2021.
//

import SwiftUI

struct SuccessfullView: View {
    var body: some View {
        VStack{
            VStack{
                VStack(alignment: .center, spacing: 10){
                    
                    Image("go")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 100)
                        .padding(20)
                    
                    
                    Text("👏 Транзакция прошла  успешно")
                        
                    
//                        .font(.custom("SF.ttf", size: 16))
                        .fontWeight(.bold)
                        //                    .padding(.bottom, 280)
                        .frame(width: 247, height: 48)
                        .foregroundColor(Color("gr"))
                        .multilineTextAlignment(.center)
                    VStack(alignment: .leading, spacing: 20)
                    {
                        
                        HStack{
                            Text("Сумма")
                               
                            Spacer()
                            
                            Text("12 000 ₸")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                        
                        
                        HStack{
                            Text("Номер транзакции")
                            
                            Spacer()
                            Text("12KN76A345BC")
                                .foregroundColor(Color("gr"))
                        }
                    }
                    .frame(maxWidth: .infinity, minHeight: 112, maxHeight: 112)
                    .background(Color.white)
                    
                    Text("Ваша реклама опубликуется автоматический")
                        .fontWeight(.bold)
//                        .font(.custom("Roboto-Medium.ttf")
//                        .font(.custom("Roboto-Medium.ttf", size: 16)
                        
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("gr"))
//                        .font(.custom("Roboto-Medium.ttf", size: 16))
                        
                        
                    
                        
                    Text(" Условия выдачи займа по предварительному решению могут отличаться от условий установленных окончательным решение полномочного органа Банка")
                        
                        .font(.custom("Roboto-Thin.ttf", size: 12))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("gr"))
                    
                    Spacer()
                }
                
                .frame(maxWidth: .infinity, minHeight: 457, maxHeight: 457)
                .background(Color("green"))
                .cornerRadius(25.0)
                
                
                
               
            }
            
            
            .padding(22)
            .frame(maxWidth: .infinity, minHeight: 505, maxHeight: 505)
            .background(Color.white)
            .cornerRadius(25.0)
            .shadow(radius: 5)
            
            
            
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessfullView()
    }
}
