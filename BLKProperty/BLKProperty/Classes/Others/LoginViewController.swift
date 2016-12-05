//
//  LoginViewController.swift
//  BLKProperty
//
//  Created by apple on 16/12/5.
//  Copyright © 2016年 CQZ. All rights reserved.
//

import UIKit


class LoginViewController: BaseViewController {
    
    // MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
    }
    // MARK: methods
    
    func initUI() {
        
        setupNaviBarWithTitle(title: "登录")
        setupNaviBarWithBtn(btnTag: NaviBarBtn.NaviRightBtn, title: "关闭", imgName: "")
        setupNaviBarWithBtn(btnTag: NaviBarBtn.NaviLeftBtn, title: "登录", imgName: "")

    }
    
    override func rightBtnAction() {
        
        self.dismiss(animated: true, completion: {
        })
    }
    
    override func leftBtnAction() {

        layOutTheApp()
    }

    //MARK: 布局tabbar
    func layOutTheApp() {
        
        let tabbar = UITabBarController()
        UITabBar.appearance().tintColor = RGB(r: 11, 154, 221)
        UITabBar.appearance().barTintColor = RGB(r: 249, 249, 249)
        
        let conplaintsVC = newNavigationControllerForClass(ComplaintsViewController(), title: "报修", itemImage: "warrantManageIcon", selectedImage: "warrantManageSelectIcon")
        let repairVC = newNavigationControllerForClass(RepairViewController(), title: "投诉建议", itemImage: "complaintsmanageIcon", selectedImage: "complaintsmanageSelectIcon")
        tabbar.viewControllers = [conplaintsVC, repairVC]
        
        var window = UIApplication.shared.keyWindow
        if window == nil {
            window = UIApplication.shared.windows[0]
        }
        window?.rootViewController = tabbar
    }
    func newNavigationControllerForClass(_ controllerClass: UIViewController, title: String, itemImage: String, selectedImage: String) -> UINavigationController {
        
        let viewController  = controllerClass
        let theNavigationController = UINavigationController(rootViewController: viewController)
        theNavigationController.navigationBar.barStyle = UIBarStyle.black
        theNavigationController.tabBarItem.title = title
        theNavigationController.tabBarItem.image = UIImage(named: itemImage)
        theNavigationController.tabBarItem.selectedImage = UIImage(named: selectedImage)
        return theNavigationController
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
