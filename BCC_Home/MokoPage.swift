////
////  MokoPage.swift
////  BCC_Home
////
////  Created by Акнур on 30.07.2021.
////
//
//import SwiftUI
//
//struct MokoPage: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct MokoPage_Previews: PreviewProvider {
//    static var previews: some View {
//        MokoPage()
//    }
//}
//
//
//{
//    
//    HStack{
//        Text("Рекламодателям")
//            .font(.system(size: 20))
//            .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
//            .fontWeight(.bold)
//        Spacer()
//            Text("")
//    }
//    .padding()
//    
//    VStack{
//        AdvertisersPage()
//    }
//    
//    HStack{
//        Text("Преимущества")
//            .font(.system(size: 20))
//            .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
//            .fontWeight(.bold)
//        Spacer()
//            Text("")
//    }
//    .padding()
//    VStack(spacing: 40){
//  AdvantageView()
//    
//    ActionPage()
//}
//    HStack{
//        Text("Программа поддержки")
//            .font(.system(size: 20))
//            .foregroundColor(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2470588235, alpha: 1)))
//            .fontWeight(.bold)
//        Spacer()
//            Text("")
//    }
//    .padding()
//    VStack(spacing: 25){
//    BlogsView()
// 
//        ScrollView(.horizontal, showsIndicators: false){
//            VStack(spacing: 20){
//                ForEach(listBanners){ list in
//                    
//                    ListView(list: list)
//                }
//            }
//        }
//        .padding()
//        ObservePage()
//       
//        
//}
// 
//}
