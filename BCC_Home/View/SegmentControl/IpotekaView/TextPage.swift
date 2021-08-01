//
//  TextView.swift
//  BCC_Home
//
//  Created by Акнур on 29.07.2021.
//

import SwiftUI

struct ActionPage: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
           
            Text("Оплата только за дочитавших — от 1\nтенге (без НДС)\nВы платите только за тех\nпользователей, которые дочитали\nстатью до конца (100% прокрутки, не\nменее 30 секунд на дочитывание).\nРекламодатель получает\nбесплатный охват тех, кто увидел\nтолько обложку публикации в ленте\nили прочитал статью частично.\n")
                .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                .font(.system(size: 18))
            
            Text("Вы можете сами установить\nстоимость дочитывания через\nличный кабинет.")
                .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                .font(.system(size: 18))
        }
    
        .frame(width: 350, height: 368)
        .background(Color.white)
        .cornerRadius(12.0)
        
        .shadow(radius: 1)
    }
}

struct ActionPage_Previews: PreviewProvider {
    static var previews: some View {
        ActionPage()
    }
}
