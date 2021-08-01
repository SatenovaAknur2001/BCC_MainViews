//
//  ObservePage.swift
//  BCC_Home
//
//  Created by Акнур on 29.07.2021.
//

import SwiftUI

struct ObservePage: View {
    @ObservedObject var login = LoginViewModel()  //
     
    var body: some View {
        VStack(spacing: 10){
        VStack(alignment: .leading, spacing: 20){
            Text("Получите бесплатно тестовый доступ на 7 дней")
                .foregroundColor(.white)
                .font(.system(size: 20))
                .fontWeight(.heavy)
            Text("Подпишитесь на рассылку BCC Home.Рассказываем о лучших рекламных практиках,делимся экспертизой, а также вы первыми узнаете о предстоящих мероприятиях для клиентов и партнёров!")
                .foregroundColor(.white)
                .font(.system(size: 14))
                .fontWeight(.regular)
            
            
            
        }
            
            
            VStack(spacing: -10){
            ZStack {
                VStack {
                  
                   
                    UsernameTextField(username: $login.username)
                    PasswordSecureField(password: $login.password)
                    if login.authenticationDidFail {
                        Text("Information not correct. Try again.")
                            .offset(y: -10)
                            .foregroundColor(.red)
                    }
                    Button(action: {
                        if login.username == login.storedUsername && login.password == login.storedpassword {
                            login.authenticationDidSucceed = true
                            login.authenticationDidFail = false
                        } else {
                            login.authenticationDidFail = true
                            login.authenticationDidSucceed = false
                        }
                    }) {
    //                    LoginButtonContent()
                    }
                }
                .padding()
                
                if login.authenticationDidSucceed {
                    Text("Login succeeded!")
                        .font(.headline)
                        .frame(width: 250, height: 80)
                        .background(Color.yellow)
                        .cornerRadius(12.0)
                        .animation(Animation.default)
                }
            }
            
            //TextField
            
            
            VStack(spacing: 0){
                Button(action: {
          
                          print("vdd")
                          }) {
          
                    HStack{
          
                                  Text("Посмотреть ЖК")
                                      .font(.custom("SFProDisplay-Regular", size: 16))
                                      .foregroundColor(Color.white)
                              }
                              .frame(width: 311, height: 48)
                              .background(Color(red: 39/255, green: 174/255, blue: 96/255, opacity: 1))
                              .cornerRadius(12.0)
                          }
                ZStack(){
                    Text("При подписке вы принимаете условия ")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                    Button(action: {
                    
                    }) {
                        
                        Text("\n\n\nпользовательского соглашения")
                            .font(.system(size: 12))
                            .foregroundColor(.green)
                    }
                }
            }
    }
        }
        .frame(width: 343, height: 435)
        .background(Color(#colorLiteral(red: 0.003921568627, green: 0.0862745098, blue: 0.2509803922, alpha: 1)))
        .cornerRadius(12.0)
        .shadow(radius: 5)
    }
}

struct ObservePage_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}


struct UsernameTextFiel: View {
    
    @Binding var username: String
//    @StateObject var color = UIColors()
    
    var body: some View {
        TextField("Введите вашу почту", text: $username)
            .padding()
            .frame(width: 343, height: 436)

            .background(Color(#colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.9803921569, alpha: 1)))
            .cornerRadius(12.0)
            .padding(.bottom, 20)
    }
}

struct PasswordSecureFiel: View {
    
    @Binding var password: String //
//    @StateObject var color =() //
    
    var body: some View {
        SecureField("Введите номер телефона", text: $password)
            .padding()
            .background(Color(#colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.9803921569, alpha: 1)))
            .frame(width: 311, height: 48)
            .cornerRadius(12.0)
            .padding(.bottom, 20)
    }
}
