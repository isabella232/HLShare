//
//  LoginModel.swift
//  HLShare
//
//  Created by HLApple on 2017/12/22.
//  Copyright © 2017年 HLApple. All rights reserved.
//

import UIKit

struct LoginDvo: Codable {
    
    
    /// 环信用户名
    var easemobUserName: String
    
    /// 环信登录密码
    var easemobPassword: String
    
    ///
    var token: String
    
    /// 状态码
    var error: Int
    
    
    /// 登录
    ///
    /// - Returns: <#return value description#>
    
    static func getLoginQuerier(_ userId: String,_ password: String) -> HLBaseNetQuerier {
        let querier = HLBaseNetQuerier()
        querier.url = "/user/user!login"
        querier.param = ["userId":userId,"password":password]
        return querier
    }
    
}
