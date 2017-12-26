//
//  SaleItemDvo.swift
//  HLShare
//
//  Created by HLApple on 2017/12/25.
//  Copyright © 2017年 HLApple. All rights reserved.
//

import UIKit

class SaleItemDvo: HLPoiDvo {
    /** 好评率 */
    var  averageScore: Double?
    
    /** 价格 */
    var  price: Float?
    
    /** 押金 */
    var  deposit: Float?
    
    /** 库存 */
    var  stockNum: Int?
    
    /** 卖家 */
    //public String lessorId;
    var  vendor: UserDvo?
    
    /** 付款方式 */
    var  payMode: Int?
    
    required init() {
        super.init()
    }
    
    required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
}
