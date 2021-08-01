//
//  Extension+UIView.swift
//  BCC_Home
//
//  Created by Акнур on 23.07.2021.
//

import Foundation
import SwiftUI

extension View {
    func border(_ color: Color, width: CGFloat, cornerRadius: CGFloat) -> some View {
        overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(color, lineWidth: width))
    }
}
