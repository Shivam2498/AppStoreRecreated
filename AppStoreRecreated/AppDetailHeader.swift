//
//  AppDetailHeader.swift
//  AppStoreRecreated
//
//  Created by Shivam Choudhary on 19/04/20.
//  Copyright © 2020 Shivam Choudhary. All rights reserved.
//

import UIKit

class AppDetailHeader : BaseCell {
    
    var app:App?{
        didSet{
            imageView.image = UIImage(named: app?.imageName ?? "")
            nameLabel.text = app?.name
            buyButton.setTitle("$\(app?.price ?? 0.0)", for: .normal)
        }
    }
    
    let imageView : UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 16.0
        iv.layer.masksToBounds = true
        return iv
    }()
    
    let segmentControl : UISegmentedControl = {
         let sc = UISegmentedControl(items: ["Details","Reviews","Related"])
        sc.tintColor = UIColor.darkGray
        sc.selectedSegmentIndex = 0
        return sc
    }()
    
    let nameLabel : UILabel = {
       let label = UILabel()
        label.text = "Test"
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 2
        return label
    }()
    
    let buyButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("BUY", for: .normal)
        button.layer.borderColor = UIColor.init(red: 0, green: 199/255, blue: 250/255, alpha: 1).cgColor
        button.layer.borderWidth = 1
        button.layer .cornerRadius = 5.0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15.0)
        button.setTitleColor(UIColor.init(red: 0, green: 150/255, blue: 255/255, alpha: 1), for: .normal)
        button.contentEdgeInsets = UIEdgeInsets.init(top: 5, left: 15, bottom: 5, right: 15)
        return button
    }()
    
    let dividerLineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.init(white: 0.4, alpha: 0.4)
        return view
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: self.contentView.topAnchor,constant: 16).isActive = true
        imageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor,constant: 16).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        addSubview(segmentControl)
        segmentControl.translatesAutoresizingMaskIntoConstraints = false
        segmentControl.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16).isActive = true
        segmentControl.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
        segmentControl.widthAnchor.constraint(equalToConstant: self.contentView.frame.width - 48).isActive = true
        
        addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 16).isActive = true
        
        addSubview(buyButton)
        buyButton.translatesAutoresizingMaskIntoConstraints = false
        buyButton.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 0).isActive = true
        buyButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        
        addSubview(dividerLineView)
        dividerLineView.translatesAutoresizingMaskIntoConstraints = false
        dividerLineView.topAnchor.constraint(equalTo: segmentControl.bottomAnchor, constant: 16).isActive = true
        dividerLineView.widthAnchor.constraint(equalToConstant: contentView.frame.width).isActive = true
        dividerLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
}
