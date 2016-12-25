//
//  LoginViewController.swift
//  BLKProperty
//
//  Created by apple on 16/12/5.
//  Copyright © 2016年 CQZ. All rights reserved.
//

import UIKit
import PKHUD

class LoginViewController: BaseViewController {
    
    
    @IBOutlet weak var loginNameTf: UITextField!
    @IBOutlet weak var pwdTf: UITextField!
    
    // MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BLKRequestManager.fetchToken({ (tokenString) in
            
            
        }, fetchFailed: {
        }())
        
        //initUI()
    }
    // MARK: methods
    
    func initUI() {
        
        setupNaviBarWithTitle("登录")
        setupNaviBarWithBtn(NaviBarBtn.NaviRightBtn, title: "关闭", imgName: "")
        HUD.allowsInteraction = false
        HUD.dimsBackground = false
        
        HUD.show(.progress)
        HUD.hide(afterDelay: 4.0)
    }
    
    override func rightBtnAction() {
        
        putDownTheKeyBoard()
        self.dismiss(animated: true, completion: {
        })
    }
    
    @IBAction func goToLoginEvent(_ sender: UIButton) {
        
        putDownTheKeyBoard()
        
        if (loginNameTf.text?.isEmpty)! {
            
            HUD.flash(.label("请您输入登录账号"), delay: 2.0)
            return;
        }
        if (pwdTf.text?.isEmpty)! {
            
            HUD.flash(.label("请您输入密码"), delay: 2.0)
        }
        
        if (pwdTf.text?.characters.count)! > 20 || (pwdTf.text?.characters.count)! < 6 {
            
            HUD.flash(.label("密码格式应为6~20位,请检查"), delay: 2.0)
        }
        
        
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
    // MARK: 放下键盘
    func putDownTheKeyBoard() {
        
        self.view.endEditing(true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        putDownTheKeyBoard()
    }
    func delay(_ delay:Double, closure:@escaping ()->()) {
        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: closure)
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
