//
//  LoginViewController.swift
//  BLKProperty
//
//  Created by cqz on 16/12/3.
//  Copyright © 2016年 FengYiXiao. All rights reserved.
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
    }
    override func rightBtnAction() {
        
        self.dismiss(animated: true, completion: {
        })
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
