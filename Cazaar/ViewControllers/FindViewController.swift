//
//  FindViewController.swift
//  Cazaar
//
//  Created by myl142857 on 12/27/19.
//  Copyright © 2019 myl142857. All rights reserved.
//

import UIKit

class FindViewController: UIViewController {

    var searchBar: UISearchBar!
    var housingButton: UIButton!
    var moreButton: UIButton!
    var collectionView: UICollectionView!
    
    let searchBarHeight: CGFloat = 100
    let buttonSize: CGFloat = 60
    let topPadding: CGFloat = 40
    let sidePadding: CGFloat = 25
    let borderWidth: CGFloat = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        self.title = "Find"
        
        searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(searchBar)
        
        housingButton = UIButton()
        housingButton.translatesAutoresizingMaskIntoConstraints = false
        housingButton.setTitle("House", for: .normal)
        housingButton.setTitleColor(.black, for: .normal)
        housingButton.layer.borderWidth = borderWidth
        view.addSubview(housingButton)
        
        moreButton = UIButton()
        moreButton.translatesAutoresizingMaskIntoConstraints = false
        moreButton.setTitle("More", for: .normal)
        moreButton.setTitleColor(.black, for: .normal)
        moreButton.layer.borderWidth = borderWidth
        view.addSubview(moreButton)
        
//        collectionView = UICollectionView()
//        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        setupConstraints()
        
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: sidePadding),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -sidePadding),
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: topPadding),
            searchBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: searchBarHeight)
            ])
        
        NSLayoutConstraint.activate([
            housingButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: sidePadding),
            housingButton.widthAnchor.constraint(equalToConstant: buttonSize),
            housingButton.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: topPadding),
            housingButton.heightAnchor.constraint(equalToConstant: buttonSize)
            ])
        
        NSLayoutConstraint.activate([
            moreButton.leadingAnchor.constraint(equalTo: housingButton.trailingAnchor, constant: sidePadding),
            moreButton.widthAnchor.constraint(equalToConstant: buttonSize),
            moreButton.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: topPadding),
            moreButton.heightAnchor.constraint(equalToConstant: buttonSize)
            ])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
