//
//  AdvertisersPage.swift
//  BCC_Home
//
//  Created by Акнур on 29.07.2021.
//

import SwiftUI

struct AdvertisersPage: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Text("Находите новых клиентов с помощью рекламы в BCC Home")
                .font(.system(size: 18))
                .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
            
            Text("Публикации BCC Home отображаются на главной странице cdome.kz и в нашем мобильном приложении.\nПользователь читает рекламную публикацию\nв среднем 2 минуты.\nДо 40% тех, кто ознакомился с рекламной\nпубликацией, переходят на сайт рекламодателя, благодаря механике Scroll2Site.")
                .font(.system(size: 14))
                .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
            
            Button(action: {
      
                      print("vdd")
                      }) {
      
                          HStack{
      
                              Text("Рассчитать кампанию")
                                  .font(.custom("SFProDisplay-Regular", size: 16))
                                  .foregroundColor(Color.white)
                          }
                          .padding(40)
                          .frame(width: 373, height: 48)
                          .background(Color(red: 39/255, green: 174/255, blue: 96/255, opacity: 1))
                          .cornerRadius(12.0)
                      }
            
        }
    }
}

struct AdvertisersPage_Previews: PreviewProvider {
    static var previews: some View {
        AdvertisersPage()
    }
}
