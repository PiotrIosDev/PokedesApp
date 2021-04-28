//
//  Pokemon.swift
//  Pokedex-App
//
//  Created by Piotr Kasperek on 27/04/2021.
//

import UIKit


class Pokemon {
    
    var name: String?
    var imageUrl: String?
    var image: UIImage?
    var id: Int?
    var height: Int?
    var weight: Int?
    var attack: Int?
    var defense: Int?
    var type: String?
    var baseExperience: Int?
    var description: String?
    
    init(id: Int, dictionary: [String: AnyObject]) {
        
        self.id = id
        
        if let name = dictionary["name"] as? String {
            self.name = name
        }
        if let imageUrl = dictionary["imageUrl"] as? String {
            self.imageUrl = imageUrl
        }
        if let height = dictionary["height"] as? Int {
            self.height = height
        }
        if let weight = dictionary["weight"] as? Int {
            self.weight = weight
        }
        if let attack = dictionary["attack"] as? Int {
            self.attack = attack
        }
        if let defense = dictionary["defense"] as? Int {
            self.defense = defense
        }
        if let type = dictionary["type"] as? String {
            self.type = type
        }
        if let baseExperience = dictionary["baseExperience"] as? Int {
            self.baseExperience = baseExperience
        }
        if let description = dictionary["description"] as? String {
            self.description = description
        }
    }
    
}
