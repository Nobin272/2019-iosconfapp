//
//  CustomTabBarController.swift
//  iosconfsg2019
//
//  Created by Vina Melody on 10/11/18.
//  Copyright © 2018 Vina Melody. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scheduleController = ScheduleViewController()
        let scheduleTab = UINavigationController(rootViewController: scheduleController)
        scheduleTab.title = "Schedule"
        scheduleTab.tabBarItem.image = UIImage(imageLiteralResourceName: "schedule_icon")
        
        let workshopController = WorkshopViewController()
        let workshopTab = UINavigationController(rootViewController: workshopController)
        workshopTab.title = "Workshop"
        workshopTab.tabBarItem.image = UIImage(imageLiteralResourceName: "workshop_icon")
        
        let newsController = NewsViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let newsTab = UINavigationController(rootViewController: newsController)
        newsTab.title = "News"
        newsTab.tabBarItem.image = UIImage(imageLiteralResourceName: "news_icon")
        
        let aboutController = AboutViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let aboutTab = UINavigationController(rootViewController: aboutController)
        aboutTab.title = "About"
        aboutTab.tabBarItem.image = UIImage(imageLiteralResourceName: "iosconfsg_icon")
        
        viewControllers = [scheduleTab, workshopTab, newsTab, aboutTab]
        tabBar.isTranslucent = false
        
        let topBorder = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 0.5)
        topBorder.backgroundColor = UIColor.lightGray.cgColor
        
        tabBar.layer.addSublayer(topBorder)
        tabBar.clipsToBounds = true
        tabBar.tintColor = UIColor.purple
    }
}


