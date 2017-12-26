//
//  HLBaseDvo.swift
//  HLShare
//
//  Created by HLApple on 2017/12/22.
//  Copyright © 2017年 HLApple. All rights reserved.
//

import UIKit
import HandyJSON
class HLBaseDvo: HandyJSON {
    
    /** 实体ID（代理键） */
    var id: Int?

    /** 創建時間 */
    var createTime: String?

    /** 修改时间 */
    var modifyTime: String?

    /** 自然键（如果有） */
    //public Object getNatureId() {return null;}

    /** 名称/标题 */
    var name: String?

    /** 描述/内容 */
    var content: String?

    /** 状态（供显示用的名称） */
    var state: String?
    
    /** 允许的操作。取值： {@link Business#OP_MODIFY} 等，按位组合。 */
    var operations: Int?
    
    /** 已经进行过的操作。取值： {@link Business#OP_MODIFY} 等，按位组合。 */
    var operated: Int?
    
    /** 类型标识 */
  //  var type: String?
    
    /** 总记录 */
//    var totalRecords: Int?
//
//    /** 开始位置 */
//    var pageStart: Int?
//
//    /** 状态码 */
//    var error: Int!
//
//    var token: String?
    
    required init() {}
   
    
   
    
  
    
}
