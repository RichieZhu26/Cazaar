//
//  PostViewController.swift
//  Cazaar
//
//  Created by myl142857 on 1/6/20.
//  Copyright © 2020 myl142857. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {

    var postButton: UIButton!
    var cancelButton: UIButton!
    var instructionLabel: UILabel!
    var itemLabel: UILabel!
    var itemTextField: UITextField!
    var groupLabel: UILabel!
    var groupTextField: UITextField!
    var descriptionLabel: UILabel!
    var descriptionTextField: UITextField!
    var imageButton: UIButton!
    
    let buttonSize: CGFloat = 60
    let topPadding: CGFloat = 30
    let sidePadding: CGFloat = 25
    let borderWidth: CGFloat = 3
    let labelWidth: CGFloat = 100
    let textFieldWidth: CGFloat = 240
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        postButton = UIButton()
        postButton.translatesAutoresizingMaskIntoConstraints = false
        postButton.setTitle("Post", for: .normal)
        postButton.setTitleColor(.black, for: .normal)
        postButton.addTarget(self, action: #selector(post), for: .touchUpInside)
        postButton.layer.borderWidth = borderWidth
        postButton.layer.cornerRadius = 10
        view.addSubview(postButton)
        
        cancelButton = UIButton()
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.setTitleColor(.black, for: .normal)
        cancelButton.addTarget(self, action: #selector(cancel), for: .touchUpInside)
        cancelButton.layer.borderWidth = borderWidth
        cancelButton.layer.cornerRadius = 10
        view.addSubview(cancelButton)
        
        instructionLabel = UILabel()
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.textAlignment = .center
        instructionLabel.text = "New Post"
        view.addSubview(instructionLabel)
        
        itemLabel = UILabel()
        itemLabel.translatesAutoresizingMaskIntoConstraints = false
        itemLabel.textAlignment = .center
        itemLabel.text = "Item Name:"
        view.addSubview(itemLabel)
        
        itemTextField = UITextField()
        itemTextField.translatesAutoresizingMaskIntoConstraints = false
        itemTextField.text = "Type here"
        itemTextField.textColor = .gray
        view.addSubview(itemTextField)
        
        groupLabel = UILabel()
        groupLabel.translatesAutoresizingMaskIntoConstraints = false
        groupLabel.textAlignment = .center
        groupLabel.text = "Group:"
        view.addSubview(groupLabel)
        
        groupTextField = UITextField()
        groupTextField.translatesAutoresizingMaskIntoConstraints = false
        groupTextField.text = "Type here"
        groupTextField.textColor = .gray
        view.addSubview(groupTextField)
        
        descriptionLabel = UILabel()
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.textAlignment = .center
        descriptionLabel.text = "Description:"
        view.addSubview(descriptionLabel)
        
        descriptionTextField = UITextField()
        descriptionTextField.translatesAutoresizingMaskIntoConstraints = false
        descriptionTextField.text = "Type here"
        descriptionTextField.textColor = .gray
        view.addSubview(descriptionTextField)
        
        imageButton = UIButton()
        imageButton.translatesAutoresizingMaskIntoConstraints = false
        imageButton.setTitle("Add images", for: .normal)
        imageButton.setTitleColor(.black, for: .normal)
        imageButton.layer.borderWidth = borderWidth
        imageButton.layer.cornerRadius = 10
        view.addSubview(imageButton)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            cancelButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: sidePadding),
            cancelButton.widthAnchor.constraint(equalToConstant: buttonSize),
            cancelButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: topPadding),
            cancelButton.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
        
        NSLayoutConstraint.activate([
            postButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -sidePadding),
            postButton.widthAnchor.constraint(equalToConstant: buttonSize),
            postButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: topPadding),
            postButton.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
        
        NSLayoutConstraint.activate([
            instructionLabel.leadingAnchor.constraint(equalTo: cancelButton.trailingAnchor, constant: sidePadding),
            instructionLabel.trailingAnchor.constraint(equalTo: postButton.leadingAnchor, constant: -sidePadding),
            instructionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: topPadding),
            instructionLabel.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
        
        NSLayoutConstraint.activate([
            itemLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: sidePadding),
            itemLabel.widthAnchor.constraint(equalToConstant: labelWidth),
            itemLabel.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: topPadding),
            itemLabel.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
        
        NSLayoutConstraint.activate([
            itemTextField.leadingAnchor.constraint(equalTo: itemLabel.trailingAnchor, constant: sidePadding),
            itemTextField.widthAnchor.constraint(equalToConstant: textFieldWidth),
            itemTextField.topAnchor.constraint(equalTo: itemLabel.topAnchor),
            itemTextField.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
        
        NSLayoutConstraint.activate([
            groupLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: sidePadding),
            groupLabel.widthAnchor.constraint(equalToConstant: labelWidth),
            groupLabel.topAnchor.constraint(equalTo: itemLabel.bottomAnchor, constant: topPadding),
            groupLabel.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
        
        NSLayoutConstraint.activate([
            groupTextField.leadingAnchor.constraint(equalTo: itemTextField.leadingAnchor),
            groupTextField.widthAnchor.constraint(equalToConstant: textFieldWidth),
            groupTextField.topAnchor.constraint(equalTo: itemTextField.bottomAnchor, constant: topPadding),
            groupTextField.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
        
        NSLayoutConstraint.activate([
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: sidePadding),
            descriptionLabel.widthAnchor.constraint(equalToConstant: labelWidth),
            descriptionLabel.topAnchor.constraint(equalTo: groupLabel.bottomAnchor, constant: topPadding),
            descriptionLabel.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
        
        NSLayoutConstraint.activate([
            descriptionTextField.leadingAnchor.constraint(equalTo: groupTextField.leadingAnchor),
            descriptionTextField.widthAnchor.constraint(equalToConstant: textFieldWidth),
            descriptionTextField.topAnchor.constraint(equalTo: groupTextField.bottomAnchor, constant: topPadding),
            descriptionTextField.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
        
        NSLayoutConstraint.activate([
            imageButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: sidePadding),
            imageButton.widthAnchor.constraint(equalToConstant: labelWidth),
            imageButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: topPadding),
            imageButton.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
        
    }
    
    @objc func post() {
        let newPost = Post(id: 1, name: itemTextField.text!, group: groupTextField.text!, description: descriptionTextField.text!, images: [])
        TabViewController.system = System(postArray: [newPost])
        print(TabViewController.system.getLength())
        self.dismiss(animated: true, completion: nil)
        
//        let catagoryViewController = CategoryViewController()
//        catagoryViewController.title = TabViewController.system.getInitials()
//        navigationController?.pushViewController(catagoryViewController, animated: true)
    }
    
    @objc func cancel() {
        self.dismiss(animated: true, completion: nil)
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
