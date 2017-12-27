//
//  HomeNao.swift
//  HLShare
//
//  Created by HLApple on 2017/12/27.
//  Copyright © 2017年 HLApple. All rights reserved.
//

import UIKit

class HomeNao: NSObject {

    /// 列出需求借口
    ///
    /// - Parameters:
    /// - userId: 用户的用户名,空表示获取当前用户的需求列表，非空表示获取该指定用户发布的需求列表。
    /// - extra: 1：获取当前用户关注用户的需求列表。2：获取当前用户好友的需求列表。10：获取所有相关用户的需求列表
    /// - Returns:
    static func getNearlyDemand(_ userId: String = "",_ extra: Int = 10)-> HLBaseNetQuerier{
        let querier = HLBaseNetQuerier()
        querier.url = "/lease/lessee/demand"
        querier.param = ["userId":userId,"extra":extra]
        return querier
    }
    
    
    /// 卖家商品列表
    static func getBuyerOrder()->HLBaseNetQuerier{
        let querier = HLBaseNetQuerier()
        querier.url = "/lease/lessor/demand!find"
        querier.param = ["":""]
        return querier
    }
}
