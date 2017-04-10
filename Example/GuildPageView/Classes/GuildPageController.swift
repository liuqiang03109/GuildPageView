//
//  GuildPageController.swift
//  GuildPageView
//
//  Created by DanLi on 2017/4/10.
//  Copyright © 2017年 CocoaPods. All rights reserved.
//

import UIKit

private let lunchKey = "firstLunch"


final class GuildPageController: UIViewController {

    fileprivate lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: UIScreen.main.bounds)
        scrollView.delegate = self
        return scrollView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(scrollView)
        // Do any additional setup after loading the view.
    }

    
    public class func isFirstLunch() -> Bool {
        let standard = UserDefaults.standard
        if !standard.bool(forKey: lunchKey) {
            standard.set(true, forKey: lunchKey)
            return true
        }
        return false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK - 对外暴露的方法




extension GuildPageController: UIScrollViewDelegate {
    
    
}


