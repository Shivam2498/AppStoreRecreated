//
//  AppDetailController.swift
//  AppStoreRecreated
//
//  Created by Shivam Choudhary on 01/03/20.
//  Copyright © 2020 Shivam Choudhary. All rights reserved.
//

import UIKit

class AppDetailController : UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.backgroundColor = UIColor.white
    }
}

class AppDetailHeader : BaseCell {
    
    let imageView : UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        return iv
    }() 
    
    override func setupViews() {
        super.setupViews()
        addSubview(imageView)
    }
    
}

class BaseCell : UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
    }
}
