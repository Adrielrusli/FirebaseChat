//
//  Model.swift
//  FirebaseTrial
//
//  Created by Adriel Bernard Rusli on 20/06/23.
//

import Foundation

struct Message : Identifiable, Codable{
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
