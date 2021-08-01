//
//  LoginView.swift
//  BCC_Home
//
//  Created by Акнур on 27.07.2021.
//

import SwiftUI
import iPhoneNumberField

struct LoginView: View {
   
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
       
            .padding()
            
            VStack(alignment: .leading, spacing: 20){
            Text("Введите ваш номер")
                                .multilineTextAlignment(.leading)
                           .foregroundColor(Color(red: 58/255, green: 58/255, blue: 63/255, opacity: 1))
                           .font(.custom("SFProDisplay-Meduim", size: 16))
                          
                VStack(spacing: 20){
                     HStack {
        
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
            
                .padding([.leading, .trailing])
                
                
                
                Button(action: {
          
                          }) {
                    HStack(alignment: .center){
                                  Text("Забыли пароль?")
                                      .font(.custom("SFProDisplay-Regular", size: 16))
                                    .foregroundColor(Color(red: 39/255, green: 174/255, blue: 96/255, opacity: 1))
                              }
                          }
//                    Spacer()
                
            Button(action: {
      
                      print("vdd")
                      }) {
      
                
                          HStack{
      
                            
                              Text("Войти")
                                  .font(.custom("SFProDisplay-Regular", size: 16))
                                  .foregroundColor(Color.white)
                          }
                          .frame(maxWidth: .infinity, minHeight: 48, maxHeight: 48)
                          .background(Color(red: 39/255, green: 174/255, blue: 96/255, opacity: 1))
                          .cornerRadius(12.0)
                      }
                Spacer()
            }

            Spacer()
            .padding(22)
            .frame(maxWidth: .infinity, minHeight: 130, maxHeight: 130)
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

