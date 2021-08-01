//
//  CalculatorView.swift
//  BCC_Home
//
//  Created by Акнур on 30.07.2021.
//

import SwiftUI

struct CalculatorView: View {
    @ObservedObject var login = LoginViewModel()
    var body: some View {
        
        VStack {
            VStack{
                Text("Ипотечный калькулятор")
                   
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0.05098039216, blue: 0.1019607843, alpha: 1)))
                    .font(.system(size: 18))
                    .fontWeight(.medium)
                
            }
            
            .padding(10)
            .padding(.horizontal)
            Spacer()
            
            HStack( spacing: -10){
                Button(action: {
                    print("sign up bin tapped")
                    
                }) {
                    HStack(alignment: .center){
                        
                        Text("7-20-25")
                            .font(.custom("SFProDisplay-Meduim", size: 12))
                            .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                    }
                    .frame(width: 82, height: 32)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                    )
                }
                .padding()
                
                Button(action: {
                    print("sign up bin tapped")
                    
                }) {
                    HStack(alignment: .center){
                        
                        Text("#ипотека")
                            .font(.custom("SFProDisplay-Meduim", size: 12))
                            .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                    }
                    .frame(width: 77, height: 32)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                    )
                }
                .padding()
                
                Button(action: {
                    print("sign up bin tapped")
                    
                }) {
                    HStack(alignment: .center){
                        
                        Text("Орда")
                            .font(.custom("SFProDisplay-Meduim", size: 12))
                            .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                    }
                    .frame(width: 61, height: 32)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                    )
                }
                .padding()
            }
            .padding(.horizontal)
            
            VStack(alignment: .leading){
                Text("О программе")
                    .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                
            }
            VStack{
                VStack(alignment: .leading){
                    Text("Выберите сумму")
                        .font(.system(size: 16))
                   
                    ZStack(alignment: .trailing){
                            TextField("", text: $login.userStorageNumber.sumNumber)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            Image("money")
                                .padding(.trailing)
                                .foregroundColor(.green)
                           
                        }
                    
                    .frame(width: 381, height: 48)
                    .foregroundColor(Color(#colorLiteral(red: 0.2270568311, green: 0.2286764085, blue: 0.2454554737, alpha: 1)))
                    .cornerRadius(16.0)
                    

                }
                VStack(alignment: .leading){
                    Text("Выберите срок")
                        .font(.system(size: 16))
                   
                    ZStack(alignment: .trailing){
                        TextField("", text: $login.userStorageNumber.costNumber)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
//                            .textFieldStyle(Color(#colorLiteral(red: 0.8783541322, green: 0.8784807324, blue: 0.8783264756, alpha: 1)))
                        Image("clock")
                                .padding(.trailing)
                                .foregroundColor(.green)
                           
                        }
                    
                    .frame(width: 381, height: 48)
                    .foregroundColor(Color(#colorLiteral(red: 0.2270568311, green: 0.2286764085, blue: 0.2454554737, alpha: 1)))
                    .cornerRadius(16.0)
                    

                }
                VStack(alignment: .leading){
                    Text("Первоночальный взнос")
                        .font(.system(size: 16))
                   
                    ZStack(alignment: .trailing){
                        TextField("", text: $login.userStorageNumber.periodNumber)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            Image("money")
                                .padding(.trailing)
                                .foregroundColor(.green)
                           
                        }
                    
                    .frame(width: 381, height: 48)
                    .foregroundColor(Color(#colorLiteral(red: 0.2270568311, green: 0.2286764085, blue: 0.2454554737, alpha: 1)))
                    .cornerRadius(16.0)
                    

                }
            }
            
            VStack(alignment: .leading){
                HStack(spacing: 15){
                    Button(action: {
                        
                        print("vdd")
                    }) {
                        
                        HStack{
                            
                            Text("0%")
                                .font(.custom("SFProDisplay-Regular", size: 16))
                                .foregroundColor(Color.green)
                        }
                        .frame(width: 33, height: 24)
                        .background(Color.white)
                        .cornerRadius(12.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                        )
                    }
                    Button(action: {
                        
                        print("vdd")
                    }) {
                        
                        HStack{
                            
                            Text("5%")
                                .font(.custom("SFProDisplay-Regular", size: 16))
                                .foregroundColor(Color.gray)
                        }
                        .frame(width: 33, height: 24)
                        .background(Color.white)
                        .cornerRadius(12.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray)
                        )
                    }
                    Button(action: {
                        
                        print("vdd")
                    }) {
                        
                        HStack{
                            
                            Text("20%")
                                .font(.custom("SFProDisplay-Regular", size: 16))
                                .foregroundColor(Color.gray)
                        }
                        .frame(width: 40, height: 24)
                        .background(Color.white)
                        .cornerRadius(12.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray)
                        )
                    }
                    Button(action: {
                        
                        print("vdd")
                    }) {
                        
                        HStack{
                            
                            Text("30%")
                                .font(.custom("SFProDisplay-Regular", size: 16))
                                .foregroundColor(Color.gray)
                        }
                        .frame(width: 40, height: 24)
                        .background(Color.white)
                        .cornerRadius(12.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray)
                        )
                    }
                    Button(action: {
                        
                        print("vdd")
                    }) {
                        
                        HStack{
                            
                            Text("50%")
                                .font(.custom("SFProDisplay-Regular", size: 16))
                                .foregroundColor(Color.gray)
                        }
                        .frame(width: 40, height: 24)
                        .background(Color.white)
                        .cornerRadius(12.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray)
                        )
                    }
                }
                .padding()
            }
            
            VStack(alignment: .leading){
                Text("Результаты расчёта ипотеки")
                    .font(.system(size: 18))
                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                    .fontWeight(.heavy)
                VStack(spacing: 20){
                    VStack(spacing: 10){
                        HStack(alignment: .center, spacing: 60){
                            VStack(alignment: .leading, spacing: 6){
                                Text("Ежемесячный платёж")
                                    .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.6745098039, blue: 0.6901960784, alpha: 1)))
                                    .font(.system(size: 12))
                                
                                Text("100 000 ₸")
                                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                            }
                            VStack(alignment: .leading, spacing: 6){
                                Text("Общая сумма")
                                    .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.6745098039, blue: 0.6901960784, alpha: 1)))
                                    .font(.system(size: 12))
                                Text("3 011 000 ₸")
                                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                            }
                            
                        }
                        HStack(alignment: .center, spacing: 90){
                            VStack(alignment: .leading, spacing: 6){
                                Text("Кредит")
                                    .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.6745098039, blue: 0.6901960784, alpha: 1)))
                                    .font(.system(size: 12))
                                
                                Text("10 000 000 ₸")
                                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                            }
                            VStack(alignment: .leading, spacing: 8){
                                Text("Проценты")
                                    .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.6745098039, blue: 0.6901960784, alpha: 1)))
                                    .font(.system(size: 12))
                                Text("1 011 000 ₸")
                                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                            }
                            
                        }
                    }
                    Button(action: {
                        
                        print("vdd")
                    }) {
                        
                        HStack{
                            
                            Text("Подать заявку")
                                .font(.custom("SFProDisplay-Regular", size: 16))
                                .foregroundColor(Color.white)
                        }
                        .frame(width: 279, height: 40)
                        .background(Color(red: 39/255, green: 174/255, blue: 96/255, opacity: 1))
                        .cornerRadius(12.0)
                    }
                    Button(action: {
                        
                        print("vdd")
                    }) {
                        
                        HStack{
                            
                            Text("Получить консультацию")
                                .font(.custom("SFProDisplay-Regular", size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                        }
                        .frame(width: 279, height: 40)
                        .background(Color.white)
                        .cornerRadius(12.0)
                        .shadow(radius: 1)
                    }
                    VStack{
                        Text("* Данные предварительные")
                            .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.6745098039, blue: 0.6901960784, alpha: 1)))
                            .font(.system(size: 12))
                            .multilineTextAlignment(.leading)
                    }
                }
                
            }
            .frame(width: 311, height: 296)
            .background(Color(#colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.9803921569, alpha: 1)))
            .cornerRadius(12.0)
            .shadow(radius: 0)
            .padding()
            
            
        }
        //        .frame(width: 343, height: 769)
        .padding(20)
        .background(Color.white)
        .cornerRadius(12.0)
        .shadow(radius: 3)
        
        
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}

