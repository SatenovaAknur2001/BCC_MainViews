//
//  RegistrationPage.swift
//  BCC_Home
//
//  Created by Акнур on 21.07.2021.
//

import SwiftUI
import iPhoneNumberField


  
struct RegistrationPage: View {
   
    class ViewModel: ObservableObject {
           @Published var text = "" {
               didSet {
                   if text.prefix(2) != "+7" {
                       text = "+7" + text
                   }
               }
           }
       }

    @State var text: String = ""
    @State var isEditing: Bool = false
    @State var email =  ""
    @ObservedObject var viewModel = ViewModel()
    var body: some View {
        VStack{

        VStack( spacing: 5){
            
            Image("logo")
                .frame(maxWidth: .infinity, minHeight: 130, maxHeight: 130)
                .offset(y: 90)

        }
    Spacer()
            
            HStack{
                Text("Нет аккаунта?")
                    .font(.custom("SFProDisplay-Regular", size: 16))
                    
                    .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                Button(action: {
          
                          print("vdd")
                          }) {
                    Text("Зарегестрироваться")
                        .font(.custom("SFProDisplay-Regular", size: 16))
                        
                        .foregroundColor(Color(red: 39/255, green: 174/255, blue: 96/255, opacity: 1))
                }
                
            }

//            .frame(maxWidth: 400, minHeight: .infinity, maxHeight: .infinity)
            .padding()
            
            VStack(alignment: .leading, spacing: 20){
            Text("Введите ваш номер")
                                .multilineTextAlignment(.leading)
                           .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                           .font(.custom("SFProDisplay-Meduim", size: 16))
                          
                VStack(spacing: 20){
                     HStack {
         //                Spacer(minLength: 20)
                         HStack (alignment: .center,
                                 spacing: 0) {
                             Image("phone")
                                 .resizable()
         
                                 .frame(width: 26, height: 26, alignment: .leading)
                                 .foregroundColor(.black)
         
                                 .frame(minWidth: 0, maxWidth: 30)
                                 .frame(minHeight: 0, maxHeight: 33)
         
//                             TextField ("+7 (_ _ _) _ _ _  _ _  _ _", text: $viewModel.text)
                                iPhoneNumberField("+7 (_ _ _) _ _ _  _ _  _ _", text: $viewModel.text)
                                    .prefixHidden(false)
                                    .countryCodePlaceholderColor(Color.pink)
                                    .font(UIFont(size: 16, weight: .medium, design: .monospaced))
                                    .maximumDigits(10)
                                    
                                    .foregroundColor(Color.black)
                                    .clearButtonMode(.whileEditing)
                                    .onClear { _ in isEditing.toggle() }
                                    .accentColor(Color.black)
                                    .padding()
                                    .background(Color(red: 250/255, green: 250/255, blue: 250/255, opacity: 1))
                                    .cornerRadius(10)
                                    .shadow(color: isEditing ? .white : .white, radius: 16)
                                    .padding()
                         }
         
                         }
         
                         .frame(maxWidth: .infinity, minHeight: 48, maxHeight: 48)
                         .background(Color(red: 250/255, green: 250/255, blue: 250/255, opacity: 1))
                         .cornerRadius(16.0)
         
                     }
                
            Button(action: {
      
                      print("vdd")
                      }) {
      
                          HStack{
      
                              Text("Продолжить")
                                  .font(.custom("SFProDisplay-Regular", size: 16))
                                  .foregroundColor(Color.white)
                          }
                          .frame(maxWidth: .infinity, minHeight: 48, maxHeight: 48)
                          .background(Color(red: 39/255, green: 174/255, blue: 96/255, opacity: 1))
                          .cornerRadius(12.0)
                      }
      
            }

            Spacer()
            Text("или")
                .foregroundColor(Color(red: 169/255, green: 172/255, blue: 176/255, opacity: 1))
                .font(.custom("SFProDisplay", size: 16))
            
            
                            VStack(alignment: .center, spacing: 17){
                
                                Button(action: {
                                        print("sign up bin tapped")
                
                                    }) {
                                    HStack(alignment: .center, spacing: 33){
                
                                        Image("google")
                                            .resizable()
                                            .frame(width: 30, height: 30, alignment: .center)
                                            .foregroundColor(.black)
                
                
                                            .frame(minWidth: 0, maxWidth: 30)
                                            .frame(minHeight: 0, maxHeight: 33)
                                        Text("Войти с помощью Google")
                //                            .frame(minWidth: 0, maxWidth: .infinity)
                                            .font(.custom("SFProDisplay-Meduim", size: 16))
                //                            .padding()
                                            .foregroundColor(.gray)
                
                
                
                
                                    }
                                    .frame(maxWidth: .infinity, minHeight: 48, maxHeight: 48)
                
                                    .overlay(
                
                                        RoundedRectangle(cornerRadius: 12)
                
                                            .stroke(Color(red: 169/255, green: 172/255, blue: 176/255, opacity: 1))
                                )
                                }
                
                
                                Button(action: {
                                        print("sign up bin tapped")
                
                                    }) {
                                    HStack(alignment: .center, spacing: 32
                        ){
                
                                        Image("facebook")
                                            .resizable()
                                            .frame(width: 30, height: 30, alignment: .center)
                                            .foregroundColor(.black)
                
                                            .frame(minWidth: 0, maxWidth: 30)
                                            .frame(minHeight: 0, maxHeight: 33)
                                        Text("Войти с помощью Facebook")
                //                            .frame(minWidth: 0, maxWidth: .infinity)
                                            .font(.custom("SFProDisplay-Meduim", size: 16))
                //                            .padding()
                                            .foregroundColor(.gray)
                
                
                
                                    }
                                    .frame(maxWidth: .infinity, minHeight: 48, maxHeight: 48)
                
                                    .overlay(
                
                                        RoundedRectangle(cornerRadius: 12)
                
                                            .stroke(Color(red: 169/255, green: 172/255, blue: 176/255, opacity: 1))
                                )
                                }
                
                                Button(action: {
                                        print("sign up bin tapped")
                
                                    }) {
                                    HStack(alignment: .center, spacing: 28){
                
                                        Image("vk")
                                            .resizable()
                                            .frame(width: 30, height: 30, alignment: .center)
                                            .foregroundColor(.black)
                
                                            .frame(minWidth: 0, maxWidth: 30)
                                            .frame(minHeight: 0, maxHeight: 33)
                                        Text("Войти с помощью VKонтакте")
                //                            .frame(minWidth: 0, maxWidth: .infinity)
                                            .font(.custom("SFProDisplay-Meduim", size: 16))
                //                            .padding()
                                            .foregroundColor(.gray)
                
                
                
                                    }
                                    .frame(maxWidth: .infinity, minHeight: 48, maxHeight: 48)
                
                                    .overlay(
                
                                        RoundedRectangle(cornerRadius: 12)
                
                                            .stroke(Color(red: 169/255, green: 172/255, blue: 176/255, opacity: 1))
                                )
                                }
                
                            }
                
            .padding(22)
            .frame(maxWidth: .infinity, minHeight: 240, maxHeight: 240)
            .background(Color.white)

            
            ZStack(alignment: .leading){
               
                Image("image")
                    .frame(maxWidth: .infinity, minHeight: 361, maxHeight: 361)
                    .aspectRatio(contentMode: .fit)
  
                Image("print")
                    .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 40)
//
            }
            .frame(maxWidth: .infinity, minHeight: 160, maxHeight: 160, alignment: .leading)
      
        }
        .padding(22)
        .frame(maxWidth: .infinity, minHeight: 950, maxHeight: 950)
        .background(Color.white)

    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationPage()
    }
}
