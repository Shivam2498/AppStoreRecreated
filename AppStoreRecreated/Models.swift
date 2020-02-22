//
//  Models.swift
//  AppStoreRecreated
//
//  Created by Shivam Choudhary on 22/02/20.
//  Copyright © 2020 Shivam Choudhary. All rights reserved.
//

import UIKit

class AppCategory: NSObject {
    var name: String?
    var apps: [App]?
    
    static func sampleAppCategory() -> [AppCategory]{
        let bestAppCategory = AppCategory()
        bestAppCategory.name = "Best New Apps"
        
        var apps = [App]()
        
        let frozenApp = App()
        frozenApp.id = 123
        frozenApp.name = "Frozen:The Entertainment Of Ice Age"
        frozenApp.imageName = "frozen"
        frozenApp.price = 3.99
        
        apps.append(frozenApp)
        
        bestAppCategory.apps = apps
        return [bestAppCategory]
    }
}

class App: NSObject {
    var id: NSNumber?
    var name: String?
    var category: String?
    var imageName: String?
    var price: NSNumber?
}
