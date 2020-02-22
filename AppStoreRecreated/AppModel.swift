//
//  AppModel.swift
//  AppStoreRecreated
//
//  Created by Shivam Choudhary on 23/02/20.
//  Copyright © 2020 Shivam Choudhary. All rights reserved.
//

import Foundation

class App:NSObject, Codable{
    
    var id: Int?
    var name: String?
    var category: String?
    var imageName: String?
    var price: Double?
    
    private enum CodingKeys: String, CodingKey{
        case id = "Id"
        case name = "Name"
        case category = "Category"
        case imageName = "ImageName"
        case price = "Price"
    }
}
