//
//  Trip.swift
//  BCC_Home
//
//  Created by Акнур on 26.07.2021.
//

import Foundation
import SwiftUI

struct Trip: Identifiable, Hashable {
    
    var id = UUID().uuidString
    var image: String
//    var title: String
    
}

var trips = [
    Trip(image: "holl"),
    Trip(image: "holl2"),
    Trip(image: "holl3"),
    Trip(image: "holl2"),
    Trip(image: "holl3"),
    Trip(image: "holl"),
    Trip(image: "holl"),
    Trip(image: "holl3")
]

var tips = [
    Trip(image: "holl3"),
    Trip(image: "holl"),
    Trip(image: "holl2"),
    Trip(image: "holl3"),
    Trip(image: "holl")
]


