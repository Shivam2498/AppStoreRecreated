//
//  Models.swift
//  AppStoreRecreated
//
//  Created by Shivam Choudhary on 22/02/20.
//  Copyright © 2020 Shivam Choudhary. All rights reserved.
//

import UIKit
import Alamofire

class AppDataModel{

    static func fetchFeaturedApps(completion:((_ appStoreModel : AppStoreModel) -> Void)?) {
        let urlString = "https://api.letsbuildthatapp.com/appstore/featured"
        Alamofire.request(urlString, method: .get).response{response in
            if let data = response.data{
                let decoder = JSONDecoder()
                if let appCategories = try? decoder.decode(AppStoreModel.self, from: data){
                    completion?(appCategories)
                }
                else{
                    print("null")
                }
            }
        }
    }
}

