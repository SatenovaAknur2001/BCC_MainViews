//
//  PopoView.swift
//  BCC_Home
//
//  Created by Акнур on 31.07.2021.
//

import SwiftUI

struct PopoView: View {
    @State var showPopover = true
    var body: some View {
        ZStack(alignment: .topTrailing) {
           
            ProfileView()
                .onTapGesture {
                    showPopover.toggle()
                }
            
            PopPage(showPopover: $showPopover)
                .opacity(showPopover ? 1 : 0)
//                .background(Color.black.opacity(0.3).ignoresSafeArea())
        }
    }
}

struct PopoView_Previews: PreviewProvider {
    static var previews: some View {
        PopoView()
    }
}

struct PopPage: View {
    @Binding var showPopover: Bool
    var body: some View {
        VStack (spacing: 15){
            HStack{
                Circle()
                    .fill(Color(#colorLiteral(red: 0.3294117647, green: 0.6588235294, blue: 0.3960784314, alpha: 1)))
                    .frame(width: 32, height: 32)
                    .overlay(
                    
                    Image("pth"))
                    .frame(width: 14, height: 8)
            }
            
            VStack(alignment: .leading, spacing: 10){
               
                Text("Размещение объявлений")
                    .font(.system(size: 16))
                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                Text("Вся информация для партнеров\nи рекламодателей")
                    .font(.system(size: 12))
                
    //                .overlay(
    //
            }
            
            HStack(){
            
            Text("Пропустить")
                .font(.system(size: 12))
                .foregroundColor(Color(#colorLiteral(red: 0.3279322982, green: 0.6571059823, blue: 0.3949099779, alpha: 1)))
            
                Button(action: {
                    print("sign up bin tapped")
                    
                }) {
                    HStack(spacing: 25){
                        
                        Text("5")
                            .font(.custom("SFProDisplay-Meduim", size: 12))
                            .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                    }
                    .frame(width: 62, height: 40)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                    )
                }
                .padding()
            }
        }
            
            .frame(width: 257, height: 144)
            .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
            
            
    //        .padding(.top, 40)
    //        .padding(.trailing, 50)
    //        .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.black.opacity(0.3).ignoresSafeArea())
            .onTapGesture {
                showPopover = false
        }
        }
    }

