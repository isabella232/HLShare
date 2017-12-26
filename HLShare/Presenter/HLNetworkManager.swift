//
//  NetworkManager.swift
//  HLShare
//
//  Created by HLApple on 2017/12/22.
//  Copyright © 2017年 HLApple. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import SwiftyJSON

typealias failureBlock = (String)->Void
typealias successBlock = (Data)->Void
class HLNetworkManager {
    
    /// 网络请求成功的状态码
    static let successStatusCode = 0
    
    /// 静态 post func
    class func POST(url: String,param: [String:Any],headers: HTTPHeaders? = nil,success: @escaping successBlock,failure: @escaping failureBlock) {
        
        Alamofire.request(url, method: .post, parameters: param,headers: headers).responseJSON{ (response) in
            print("json: \(JSON(response.result.value ?? "josn 为空"))")
//            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
//                print("data: \(JSON(utf8Text))")
//           // SwiftNotice.showNoticeWithText(text: "网络错误")
//            }
            //            // let d = try! JSONSerialization.data(withJSONObject: dic!, options: .prettyPrinted)
            //            // let a = try JSONDecoder().decode(model.self, from: response.data!)
            //            do{
            //                let json = try JSONSerialization.jsonObject(with: data, options:  .allowFragments)
            //                print(json)
            //
            //            }catch{
            //                print("-------------- json 解析失败 ------------------- ")
            //                if let utf8Text = String(data: data, encoding: .utf8) {
            ////                    print("json: \(JSON(utf8Text))")
            //                    print(utf8Text)
            //                }
            //            }

            switch response.result{
            case .success(let _):
                if let data = response.data {
                    success(data)
                }else{
                    print("----------data  nil---------")
                    failure("----------data  nil---------")
                }
            case .failure(let  error):
                print("----------网络故障: \(error.localizedDescription)--------")
                failure("----------网络故障--------")
            }


        }
    }
       
//        Alamofire.request(BASEURL+url, method: .post, parameters: tempParam,headers: headers).responseJSON { (response) in
//            print("json: \(JSON(response.result.value ?? ""))")
//            switch response.result {
//            case .success(let value):
//                if JSON(value)["error"].intValue == 0{
//                    success(JSON(value))
//                }else{
//                    if showErrorMsg{
//                        //SwiftNotice.showNoticeWithText(text: JSON(value)["resMsg"].stringValue)
//                    }
//                    failure(JSON(value)["error"].intValue,JSON(value)["resMsg"].stringValue)
//                }
//            case .failure(let error):
////        }
//    }
    
}
