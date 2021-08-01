//
//  PageControl.swift
//  BCC_Home
//
//  Created by Акнур on 26.07.2021.
//

import Foundation
import SwiftUI

struct PageControl: UIViewRepresentable {
    
    var maxPages: Int
    var currentPage: Int
    
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.backgroundStyle = .prominent
        control.numberOfPages = maxPages
        control.currentPage = currentPage
        
        return control
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
}
