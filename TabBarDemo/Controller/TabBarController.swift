//
//  TabBarController.swift
//  TabBarDemo
//
//  Created by Adriana González Martínez on 2/17/20.
//  Copyright © 2020 Adriana González Martínez. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        
        self.tabBar.barTintColor = UIColor.black
        self.tabBar.tintColor = UIColor.white
    }

    func setupViewControllers(){
        
        let northAmerica = Continent(name: "North Am", imageName: "northAmerica", associatedColor: .systemPurple)
        
        let southAmerica = Continent(name: "South Am", imageName: "southAmerica", associatedColor: .systemPink)
        
        let europe = Continent(name: "Europe", imageName: "europe", associatedColor: .blue)
        
        let africa = Continent(name: "Africa", imageName: "africa", associatedColor: .systemGreen)
        
        let continents = [northAmerica, southAmerica, europe, africa]
        //let tabBarImages = []
        var navControllers = [UINavigationController]()
        
        for continent in continents{
            let vc = ContinentVC()
            let navController = UINavigationController(rootViewController: vc)
            vc.currentContinent = continent
            vc.tabBarItem = UITabBarItem(title: continent.name, image: UIImage(systemName: "staroflife"), selectedImage: UIImage.init(systemName: "staroflife.fill"))
            
            
            navControllers.append(navController)
        }

        
       
        viewControllers = navControllers
    }
}
