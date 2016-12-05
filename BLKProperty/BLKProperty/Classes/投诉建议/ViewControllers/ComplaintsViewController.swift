//
//  ComplaintsViewController.swift
//  BLKProperty
//
//  Created by apple on 16/12/5.
//  Copyright © 2016年 CQZ. All rights reserved.
//

import UIKit

class ComplaintsViewController: BaseViewController {

    // MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
    }
    
    // MARK: methods
    func initUI() {
        
        setupNaviBarWithTitle(title: "投诉建议")
        setupNaviBarWithBtn(btnTag: NaviBarBtn.NaviRightBtn, title: "登出", imgName: "")

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
