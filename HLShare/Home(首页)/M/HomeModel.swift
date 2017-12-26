//
//  HomeModel.swift
//  HLShare
//
//  Created by HLApple on 2017/12/25.
//  Copyright © 2017年 HLApple. All rights reserved.
//

import UIKit
import HandyJSON


/// 需求方业务管理



/// 列出需求
class Demands: HandyJSON{
    
    var demands: [Demand]?
    
    /** 总记录 */
    var totalRecords: Int?
    
    /** 开始位置 */
    var pageStart: Int?
    
    /** 状态码 */
    var error: Int!
    
    var token: String?
    
    required init() {}
    
    class Demand: HLPoiDvo {
        
        var fileDvos: [FileDvo]?
        
        /** 需求价格 */
        var price: Float?
        
        /** （当前用户作为需方时）投标的数量 */
        var badeProvisionCount: Int?
        
        required init() {}
    }
    
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
}


