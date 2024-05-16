//
//  Crew.swift
//  InspirationApp
//
//  Created by Vivek Patel on 03/04/24.
//

import Foundation
enum Crew : String, Identifiable, CaseIterable, Equatable{
    case jared, haley , chris, sian
    var id : Self {self}
    var name: String {rawValue.lowercased()}
    
    var fullName: String{
        switch self {
            
        case .jared:
            "Jared Isaacman"
        case .haley:
            "Haley Arceneaux"
        case .chris:
            "Chris Sembroski"
        case .sian:
            "Dr. Sian Proctor"
        }
    }
    
    var about: String{
        switch self{
            
        case .jared:
            "Jared Isaacman is the founder and CEO of Shift4 Payments (NYSE: FOUR), the leader in integrated payment processing solutions"
        case .haley:
            "Jared Isaacman is the founder and CEO of Shift4 Payments (NYSE: FOUR), the leader in integrated payment processing solutions"
        case .chris:
            "Chris Sembroski grew up with a natural curiosity about outer space. Stargazing late at night on the roof of his high school and launching high-powered model rockets in college cemented this passion."
        case .sian:
            "Dr. Sian Proctor is a geoscientist, explorer, and science communication specialist with a lifelong passion for space exploration."
        }
    }
}
