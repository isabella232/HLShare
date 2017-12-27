//
//  HLBasePresenter.swift
//  HLShare
//
//  Created by HLApple on 2017/12/22.
//  Copyright © 2017年 HLApple. All rights reserved.
//

import UIKit

class HLBasePresenter {
    
    @objc dynamic func execute<T: Result>(HandyJSON: T.Type,querier: HLBaseNetQuerier,success: @escaping successBlock,failure: @escaping failureBlock) -> Void {
        querier.success = success
        querier.failure = failure
        HLBaseNao.excute(netQuerier: querier, dov: HandyJSON)
    }
    
}

