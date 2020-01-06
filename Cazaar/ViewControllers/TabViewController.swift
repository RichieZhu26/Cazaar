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
