//
//  FindViewController.swift
//  Cazaar
//
//  Created by myl142857 on 12/27/19.
//  Copyright © 2019 myl142857. All rights reserved.
//

import UIKit

class FindViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var searchBar: UISearchBar!
    var housingButton: UIButton!
    var moreButton: UIButton!
    var layout: UICollectionViewFlowLayout!
    var collectionView: UICollectionView!
    
    let reuseIdentifier = "reuse"
    
    let searchBarHeight: CGFloat = 100
    let buttonSize: CGFloat = 60
    let topPadding: CGFloat = 40
    let sidePadding: CGFloat = 25
    let borderWidth: CGFloat = 3
    
    var managements: [Management] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        self.title = "Find"
        
        let fakeManage1 = Management(id: 0, name: "CT-Terrace")
        let fakeManage2 = Management(id: 1, name: "M-View")
        let fakeManage3 = Management(id: 2, name: "CT-Plaza")
        managements = [fakeManage1, fakeManage2, fakeManage3]
            
        searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(searchBar)
        
        housingButton = UIButton()
        housingButton.translatesAutoresizingMaskIntoConstraints = false
        housingButton.setTitle("House", for: .normal)
        housingButton.setTitleColor(.black, for: .normal)
        housingButton.layer.borderWidth = borderWidth
        housingButton.layer.cornerRadius = 10
        view.addSubview(housingButton)
        
        moreButton = UIButton()
        moreButton.translatesAutoresizingMaskIntoConstraints = false
        moreButton.setTitle("More", for: .normal)
        moreButton.setTitleColor(.black, for: .normal)
        moreButton.layer.borderWidth = borderWidth
        moreButton.layer.cornerRadius = 10
        view.addSubview(moreButton)
        
        layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = sidePadding
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(FindCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.alwaysBounceHorizontal = true
        view.addSubview(collectionView)
        
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
        
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: housingButton.bottomAnchor, constant: topPadding),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return managements.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FindCollectionViewCell
        let management = managements[indexPath.item]
        cell.configure(management: management)
        cell.setNeedsUpdateConstraints()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 75)
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
