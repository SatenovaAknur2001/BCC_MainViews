//
//  TextFieldtrailing.swift
//  BCC_Home
//
//  Created by Акнур on 31.07.2021.
//

import SwiftUI

struct TextFieldtrailing: View {
    @State var text = ""
    var body: some View {
        
//        TextField("", text: $text)
//            .textFieldStyle(RoundedBorderTextFieldStyle())
        NavigationView {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                NavigationLink(destination: Text("DetailView").navigationTitle("Detail")) {
                    Text("MainView")
                }
            }
            .navigationTitle("Hello")
        }
    }
}

struct TextFieldtrailing_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldtrailing()
    }
}
