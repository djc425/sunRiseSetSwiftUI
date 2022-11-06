//
//  SunModel.swift
//  sunRiseSwiftUITest
//
//  Created by David Chester on 10/28/22.
//

import Foundation
import SwiftUI

struct SunModel: Identifiable {
    var time: String
   // var image: String

    var imageName: String
    var image: Image {
        switch imageName {
        case "sunrise.fill" :
              return Image(systemName: "sunrise.fill")
        case "sunset.fill" :
            return Image(systemName: "sunset.fill")
        default:
           return Image(systemName: "sun.max.fill")
        }

    }

    var id: Int
}

struct MoonModel {
    var time: String
    var image: String
}

struct DayLength {
    var dayLength: String
}
