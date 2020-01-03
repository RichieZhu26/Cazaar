//
//  FindCollectionViewCell.swift
//  Cazaar
//
//  Created by myl142857 on 1/3/20.
//  Copyright © 2020 myl142857. All rights reserved.
//

import UIKit

class FindCollectionViewCell: UICollectionViewCell {
    
    var nameLabel: UILabel!
    
    let padding: CGFloat = 12
    let labelHeight: CGFloat = 25
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = .blue
        
        nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.textAlignment = .center
        contentView.addSubview(nameLabel)
        
    }
    
    override func updateConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            ])
        
        super.updateConstraints()
    }
    
    func configure(management: Management) {
        nameLabel.text = management.name
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
