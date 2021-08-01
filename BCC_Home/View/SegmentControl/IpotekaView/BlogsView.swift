//
//  BlogsView.swift
//  BCC_Home
//
//  Created by Акнур on 29.07.2021.
//

import SwiftUI



struct BlogsView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false ){
        HStack {
           
            HStack {
                VStack{
                    
                    VStack(alignment: .leading, spacing: 24){
                  
                        
                        Text("При первом пополнении рекламного кабинета в BCC Home мы бесплатно подготовим рекламные публикации, чтобы вы могли быстро получить новых клиентов и покупателей.")
                            .foregroundColor(Color.white)
                            .font(.system(size: 16))
                            .fontWeight(.regular)
                        
                    
                      
                }
                }
                .frame(width: 247, height: 172)
                .background(Color(#colorLiteral(red: 0.2196078431, green: 0.4862745098, blue: 0.347251425, alpha: 1)))
                .cornerRadius(12.0)
                .shadow(radius: 5)
            }
            HStack {
                VStack{
                    
                    VStack(alignment: .leading, spacing: 24){
                  
                        
                        Text("При первом пополнении рекламного кабинета в BCC Home мы бесплатно подготовим рекламные публикации, чтобы вы могли быстро получить новых клиентов и покупателей.")
                            .foregroundColor(Color.white)
                            .font(.system(size: 16))
                            .fontWeight(.regular)
                        
                    
                      
                }
                }
                .frame(width: 247, height: 172)
                .background(Color(#colorLiteral(red: 0.2196078431, green: 0.4862745098, blue: 0.347251425, alpha: 1)))
                .cornerRadius(12.0)
                .shadow(radius: 5)
            }
            HStack {
                VStack{
                    
                    VStack(alignment: .leading, spacing: 24){
                  
                        
                        Text("При первом пополнении рекламного кабинета в BCC Home мы бесплатно подготовим рекламные публикации, чтобы вы могли быстро получить новых клиентов и покупателей.")
                            .foregroundColor(Color.white)
                            .font(.system(size: 16))
                            .fontWeight(.regular)
                        
                    
                      
                }
                }
                .frame(width: 247, height: 172)
                .background(Color(#colorLiteral(red: 0.2196078431, green: 0.4862745098, blue: 0.347251425, alpha: 1)))
                .cornerRadius(12.0)
                .shadow(radius: 5)
            }
            .padding()
         
       
        }
        }
    }
}

struct BlogsView_Previews: PreviewProvider {
    static var previews: some View {
        BlogsView()
    }
}

