//
//  PostTableViewCell.swift
//  Cazaar
//
//  Created by myl142857 on 1/7/20.
//  Copyright © 2020 myl142857. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    var nameLabel: UILabel!
    
    let padding: CGFloat = 12
    let labelHeight: CGFloat = 25
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.textAlignment = .center
        contentView.addSubview(nameLabel)
        
    }
    
    override func updateConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            nameLabel.heightAnchor.constraint(equalToConstant: labelHeight)
            ])
        
        super.updateConstraints()
    }
    
    func configure(post: Post) {
        nameLabel.text = post.name
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
