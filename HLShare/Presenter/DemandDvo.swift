//
//  DemandDvo.swift
//  HLShare
//
//  Created by HLApple on 2017/12/25.
//  Copyright © 2017年 HLApple. All rights reserved.
//

import UIKit
import HandyJSON
// 需求Dvo
class DemandDvo:HLPoiDvo {
    
    
    /** 需求方 */
    //var demander: UserDvo?
    
    var badeProvision: BadeProvisionDvo?

    /** 需求价格 */
    var price: Float?
    
    /** （当前用户作为需方时）投标的数量 */
    var badeProvisionCount: Int?
    
    /// 查找附近需求
    class func getNearlyDemand()-> HLBaseNetQuerier{
        let querier = HLBaseNetQuerier()
        querier.url = "/lease/lessor/demand!find"
        querier.param = ["":""]
        return querier
    }

    required init() {
        super.init()
    }

//    func mapping(mapper: HelpingMapper) {
//        mapper <<<
//            self.badeProvision <-- "BadeProvisionDvo"
//    }

}
