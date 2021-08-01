//
//  GOView.swift
//  BCC_Home
//
//  Created by Акнур on 29.07.2021.
//

import SwiftUI

struct GOView: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 10){
                Text("24 поиска")
                    .foregroundColor(Color(#colorLiteral(red: 0.1529411765, green: 0.6823529412, blue: 0.3764705882, alpha: 1)))
                    .font(.system(size: 16))
                HStack(spacing: 80){
                  
                Text("Сохраненные поиски")
                    .font(.system(size: 18))
                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                    Image("arrow")
                        .frame(width: 14, height: 8)
                       
                }
            }
         
        }
        .frame(width: 343, height: 80)
        .background(Color.white)
        .cornerRadius(12.0)
        .shadow(radius: 5)
    }
}

struct GOView_Previews: PreviewProvider {
    static var previews: some View {
        GOView()
    }
}
