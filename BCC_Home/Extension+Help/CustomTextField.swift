////
////  CustomTextField.swift
////  BCC_Home
////
////  Created by Акнур on 23.07.2021.
////
//
//import SwiftUI
//
//struct CustomTextField: View {
//    var image: String
//    var title: String
//    @Binding var value: String
//    
//    var body: some View {
//        VStack{
//        HStack{
//         Image(systemName: image)
//            .font(.system(size: 22))
//            .foregroundColor(.primary)
//            
//            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
//                Text(title)
//                    .font(.custom("SFProDisplay-Regular", size: 16))
//                    .fontWeight(.heavy)
//                    .foregroundColor(.black)
//                    
//                
//                
//                TextField("", text: $value)
//            }
//        }
//      
//            
//    }
//        .padding(22)
//        .frame(maxWidth: .infinity, minHeight: 48, maxHeight: 48)
//        .background(Color.white)
//        .cornerRadius(16.0)
//        .foregroundColor(Color(red: 270/255, green: 270/255, blue: 270/255, opacity: 1))
//        }
//}
////struct CustomTextField_Previews: PreviewProvider {
////    static var previews: some View {
////        CustomTextField(image: <#String#>, title: <#String#>, value: <#Binding<String>#>)
////    }
////}
