//
//  TabViewController.swift
//  Cazaar
//
//  Created by myl142857 on 12/27/19.
//  Copyright © 2019 myl142857. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController{

    static var system = System(postArray: [])
    
    var chat: UINavigationController!
    var find: UINavigationController!
    var setting: UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        chat = UINavigationController(rootViewController: ChatViewController())
        find = UINavigationController(rootViewController: FindViewController())
        setting = UINavigationController(rootViewController: SettingViewController())
        
        let chatBar = UITabBarItem(title: "Chat", image: nil, selectedImage: nil)
        chat.tabBarItem = chatBar
        let findBar = UITabBarItem(title: "Find", image: nil, selectedImage: nil)
        find.tabBarItem = findBar
        let settingBar = UITabBarItem(title: "Setting", image: nil, selectedImage: nil)
        setting.tabBarItem = settingBar
        
        self.viewControllers = [chat, find, setting]
        
        let fakePost1 = Post(id: 0, name: "CTT-4039", group: "Housing", description: "Awesome apartment", images: [])
        let fakePost2 = Post(id: 0, name: "CTT-4018", group: "Housing", description: "Nice apartment", images: [])
        let fakePost3 = Post(id: 0, name: "CTT-4029", group: "Housing", description: "Great apartment", images: [])
        
        TabViewController.system.addPostArray(post: fakePost1)
        TabViewController.system.addPostArray(post: fakePost2)
        TabViewController.system.addPostArray(post: fakePost3)
        
        print("Initially there are 3 fake posts in system")
        
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
