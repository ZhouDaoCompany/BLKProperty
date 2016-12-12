//
//  FirstLaunchViewController.swift
//  BLKProperty
//
//  Created by apple on 16/12/5.
//  Copyright © 2016年 CQZ. All rights reserved.
//

import UIKit

class FirstLaunchViewController: UIViewController, UIScrollViewDelegate {
    
    var contentScrollView : ZDCircleScrollView!
    var bottomView: UIView!
    var registerBtn : UIButton!
    
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
        
        bottomView = UIView.init(frame: CGRect(x: CGFloat(0.0), y: ScreenHeight - 60, width: ScreenWidth, height: 60))
        bottomView.backgroundColor = RGB(r: 13, 65, 112)
        self.view.addSubview(bottomView)
        
        registerBtn = UIButton(type: UIButtonType.custom)
        registerBtn.backgroundColor = UIColor.clear
        registerBtn.setTitle("已有账号，登陆 >", for: .normal)
        registerBtn.setTitleColor(RGB(r: 86, 216, 216), for: .normal)
        registerBtn.titleLabel?.font = FONT(size: CGFloat(16))
        registerBtn.frame = CGRect(x: CGFloat(9), y: CGFloat(5), width: CGFloat(155), height: CGFloat(50))
        registerBtn.addTarget(self, action: #selector(registerButtonEvent(_:)), for: UIControlEvents.touchUpInside)
        
        bottomView.addSubview(registerBtn)
    }
    
    func registerButtonEvent(_ sender : UIButton) {
        
        print("去登录")
        
        let vc = LoginViewController()
        let nav = UINavigationController(rootViewController: vc)
//        nav.navigationBar.barStyle = UIBarStyle.black
        UINavigationBar.appearance().barTintColor = UIColor.black
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        UIApplication.shared.setStatusBarStyle(UIStatusBarStyle.lightContent, animated: false)

        nav.navigationBar.tintColor = UIColor.white
        self .present(nav, animated: true) {
            
        }
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
