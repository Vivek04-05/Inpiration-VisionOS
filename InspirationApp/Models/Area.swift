//
//  Area.swift
//  InspirationApp
//
//  Created by Vivek Patel on 03/04/24.
//

import Foundation

enum Area : String, Identifiable, CaseIterable, Equatable
{
    case astronauts, equipment, mission
    var id : Self { self }
    var name: String {rawValue.lowercased()}
    var title: String {
        switch self {
        case .astronauts:
            "Inspiration 4 mission crew members....."
        case .equipment:
            "Inspiration 4 mission equipments....."
        case .mission:
            "Inspiration 4 mission missions....."
        }
    }
}

