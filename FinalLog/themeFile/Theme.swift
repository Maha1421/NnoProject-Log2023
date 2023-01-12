/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

enum Theme: String, CaseIterable, Identifiable {
    case p1
    case p2
    case p3
    
    
    var accentColor: Color {
        switch self {
        case .p1, .p2, .p3: return .white
        }
    }
    var mainColor: Color {
        Color(rawValue)
    }
    var name: String {
        rawValue.capitalized
    }
    var id: String {
        name
    }
}
