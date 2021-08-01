//
//  AdvantageView.swift
//  BCC_Home
//
//  Created by Акнур on 29.07.2021.
//

import SwiftUI

struct AdvantageView: View {
    var body: some View {

        VStack(alignment: .leading, spacing: 16){
            HStack(spacing: 12){
            HStack{
                Image("done")
                    .frame(width: 14, height: 11)
                Text("20 млн \nпользователей в день")
                    .font(.system(size: 14))
            }
            HStack{
                Image("done")
                    .frame(width: 14, height: 11)
                Text("63 млн\nмесячная аудитория")
                    .font(.system(size: 14))
            }
            }
            HStack(spacing: 45){
            HStack{
                Image("done")
                    .frame(width: 14, height: 11)
                Text("15 мин\nв день проводит\nпользователь\nна BCC Home")
                    .font(.system(size: 14))
            }
            HStack{
                Image("done")
                    .frame(width: 14, height: 11)
                Text("2 мин \nсреднее время \nдочитывания\n рекламной публикации")
                    .font(.system(size: 14))
            }
            }
        }
    }
}

struct AdvantageView_Previews: PreviewProvider {
    static var previews: some View {
        AdvantageView()
    }
}
