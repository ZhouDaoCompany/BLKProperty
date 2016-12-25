//
//  BLKRequestManager.swift
//  BLKProperty
//
//  Created by apple on 16/12/12.
//  Copyright © 2016年 CQZ. All rights reserved.
//

import UIKit

class BLKRequestManager: NSObject {
    
    // MARK: 获取token
    
//    static func fetchSuccess((_ token: String) -> Void) {
//
//    }
    
    //MARK: 获取服务器token
    class func fetchToken(_ fetchSuccess : BLKStringBlock, fetchFailed : BLKBlock) {
        
        let parasDictionary : Dictionary<String, String> = ["deviceId": deviceID()]
        
        let urlString = BASE_URL +  GetTokenApi
        
        BLKNetWorkManger.postWithUrl(urlString, params: parasDictionary, success: { (response) in
        
            print("打印结果是\(response)")
        }, fail: { (error) in
        
        })
    }
    
    // MARK: 获取设备的deviceID
    static func deviceID() -> String {
        
        var did : String = ""
        if (UserDefaults.standard.value(forKey: BLKDeviceIDKey) != nil) {
           
            did = UserDefaults.standard.value(forKey: BLKDeviceIDKey) as! String
        }

        if did.isEmpty {
            
            did = NSUUID.init().uuidString
            UserDefaults.standard.set(did, forKey: BLKDeviceIDKey)
            UserDefaults.standard.synchronize()
        }
        return did
    }
    
}
