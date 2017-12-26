//
//  HLBasePresenter.swift
//  HLShare
//
//  Created by HLApple on 2017/12/22.
//  Copyright © 2017年 HLApple. All rights reserved.
//

import UIKit

/// 全局变量  登录的token
var token: String?

class HLBasePresenter: NSObject {
    
    class func execute(netQuerier: HLBaseNetQuerier,success: @escaping successBlock,failure: @escaping failureBlock) -> Void {
        netQuerier.param.updateValue("true", forKey: "silent")
        if let t = token {
            netQuerier.param.updateValue(t, forKey: "token")
        }
        HLNetworkManager.POST(url: BASEURL+netQuerier.url, param: netQuerier.param, success: success, failure: failure)
    }
}
