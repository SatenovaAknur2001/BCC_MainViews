//
//  TextView.swift
//  BCC_Home
//
//  Created by Акнур on 29.07.2021.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 23){
            VStack(alignment: .leading, spacing: 10){
                Text("80% профессионалов рынка недвижимости работают с нами")
                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                
                Text("Наши клиенты это +2000 агентов\n и агентств недвижимости")
                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                    .font(.system(size: 14))
                    .fontWeight(.medium)
                Text("Пользователи максимально быстро находят\n нужные объявления на сайте, и сразу переходят\n к звонкам и сделкам")
                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                    .font(.system(size: 14))
                    .fontWeight(.medium)
            }
            VStack(alignment: .leading, spacing: 10){
                Text("15 000")
                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                
                Text("проверенных объявлений в день")
                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                    .font(.system(size: 14))
                    .fontWeight(.medium)
            }
            VStack(alignment: .leading, spacing: 10){
                Text("25")
                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                
                Text("операторов тщательно проверяют\n объявления каждый день")
                    .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
                    .font(.system(size: 14))
                    .fontWeight(.medium)
            }
        }
        
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
