//
//  ViewController.swift
//  AppStoreRecreated
//
//  Created by Shivam Choudhary on 22/02/20.
//  Copyright © 2020 Shivam Choudhary. All rights reserved.
//

import UIKit

class FeaturedAppsController: UICollectionViewController {
    
    private let cellId = "cellId"
    var appCategories : [AppCategory]?
    var noOfApps : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.backgroundColor = .white
        collectionView.register(CategoryCell.self, forCellWithReuseIdentifier: cellId)
        //appCategories = AppCategory.sampleAppCategory()
        AppDataModel.fetchFeaturedApps(){appStoreModel in
            self.appCategories = appStoreModel.categories
            self.noOfApps = self.appCategories?.count ?? 0
            self.collectionView.reloadData()
        }
    }
}

extension FeaturedAppsController{
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return noOfApps
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CategoryCell
        
        cell.appCategory = appCategories?[indexPath.item]

        return cell
    }
}

extension FeaturedAppsController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: view.frame.width, height: 230)
    }
}
