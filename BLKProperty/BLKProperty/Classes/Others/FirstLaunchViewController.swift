//
//  FirstLaunchViewController.swift
//  BLKProperty
//
//  Created by apple on 16/11/30.
//  Copyright © 2016年 FengYiXiao. All rights reserved.
//

import UIKit

class FirstLaunchViewController: UIViewController, UIScrollViewDelegate {
    
    var contentScrollView : ZDCircleScrollView!
    var bottomView: UIView!
    
    
    let imageArrays : [String] = ["nav_1","nav_2","nav_3"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        
    }
    
    // MARK: Methods
    func initUI() {
        
        contentScrollView = ZDCircleScrollView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight - 60))
        contentScrollView.startAdsWithBlock(
           imageArrays) { (Int) in
            
        }
        self.view.addSubview(contentScrollView)
        
    }
    // MARK: setter and getter
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
