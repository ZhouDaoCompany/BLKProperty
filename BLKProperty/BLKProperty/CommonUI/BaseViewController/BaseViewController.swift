//
//  BaseViewController.swift
//  BLKProperty
//
//  Created by cqz on 16/12/25.
//  Copyright © 2016年 CQZ. All rights reserved.
//

import UIKit
enum NaviBarBtn : Int {
    
    case NaviLeftBtn = 101  //自定义NavBar左侧的按钮tag值
    case NaviRightBtn = 102 //自定义NavBar右侧的按钮tag值
}

class BaseViewController: UIViewController {

    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        self.automaticallyAdjustsScrollViewInsets = false
    }
    
    //MARK: Methods
    //设置导航标题颜色
    func setShowNavTitleColor(_ color : UIColor) {
        
        let dict : Dictionary<String, Any> = [NSForegroundColorAttributeName : color]
        self.navigationController?.navigationBar.titleTextAttributes = dict
    }
    //设置左右按钮图片和标题颜色
    func setNavBarButtonImageAndTitleColor(_ color : UIColor) {
        
        self.navigationController?.navigationBar.tintColor = color
    }
    //设置导航背景颜色
    func setupNaviBarWithColor(_ color : UIColor) {
        
        self.navigationController?.navigationBar.barTintColor = color
    }
    //设置NavBar中间的title显示文字
    func setupNaviBarWithTitle(_ title : String) {
        
        self.title = title
        let fontDict : [String : Any] = [NSForegroundColorAttributeName : UIColor.white]
        self.navigationController?.navigationBar.titleTextAttributes = fontDict
    }
    //设置导航左右按钮
    func setupNaviBarWithBtn(_ btnTag : NaviBarBtn, title: String, imgName : String) {
        
        let selectorName = (btnTag == NaviBarBtn.NaviLeftBtn) ? #selector(self.leftBtnAction) : #selector(self.rightBtnAction)
        if !title.isEmpty {
            
            let btnItem = UIBarButtonItem.init(title: title, style: UIBarButtonItemStyle.done, target: self, action: selectorName)
            accordingWithNaviBarBtn(btnTag: btnTag, btnItem: btnItem)
        } else if (!imgName.isEmpty) {
            
            let btnItem = UIBarButtonItem.init(image: UIImage(named: imgName), style: UIBarButtonItemStyle.done, target: self, action: selectorName)
            accordingWithNaviBarBtn(btnTag: btnTag, btnItem: btnItem)
        }
        
        UIBarButtonItem.appearance().setBackButtonTitlePositionAdjustment(UIOffsetMake(0, -60), for: UIBarMetrics.default)
        
    }
    func accordingWithNaviBarBtn(btnTag: NaviBarBtn, btnItem : UIBarButtonItem) {
        
        if btnTag == NaviBarBtn.NaviLeftBtn {
            
            self.navigationItem.leftBarButtonItem = btnItem
        } else {
            
            self.navigationItem.rightBarButtonItem = btnItem
        }
    }


    func rightBtnAction()  {
        
    }
    func leftBtnAction() {
        
    }
    
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
