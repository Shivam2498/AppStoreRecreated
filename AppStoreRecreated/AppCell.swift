//
//  AppCell.swift
//  AppStoreRecreated
//
//  Created by Shivam Choudhary on 22/02/20.
//  Copyright © 2020 Shivam Choudhary. All rights reserved.
//

import UIKit

class AppCell: UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let imageView : UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "frozen")
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 17
        iv.layer.masksToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let nameLabel : UILabel = {
        let label = UILabel()
        label.text = "Frozen: The Entertainment For One"
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 2
        return label
    }()
    
    let categoryLabel : UILabel = {
        let label = UILabel()
        label.text = "Entertainment"
        label.font = UIFont.systemFont(ofSize: 11)
        label.numberOfLines = 1
        label.textColor = .darkGray
        return label
    }()
    
    let priceLabel : UILabel = {
        let label = UILabel()
        label.text = "3.99$"
        label.font = UIFont.systemFont(ofSize: 11)
        label.textColor = .darkGray
        return label
    }()
    
    func setupViews(){
        addSubview(imageView)
        
        imageView.frame = CGRect.init(x: 0, y: 0, width: frame.width, height: frame.width)
        
        addSubview(nameLabel)
        nameLabel.frame = CGRect.init(x: 0, y: frame.width+2, width: frame.width, height: 40 )
        
        addSubview(categoryLabel)
        categoryLabel.frame = CGRect.init(x: 0, y: frame.width+38, width: frame.width, height: 20)
        
        addSubview(priceLabel)
        priceLabel.frame = CGRect.init(x: 0, y: frame.width+56, width: frame.width, height: 20)
    }
}

