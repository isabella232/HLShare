//
//  LoginViewController.swift
//  HLShare
//
//  Created by HLApple on 2017/12/22.
//  Copyright © 2017年 HLApple. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /// 用户登录
    ///
    /// - Parameter sender: <#sender description#>
    @IBAction func userLogin(_ sender: UIButton) {
        
        HLBasePresenter.execute(netQuerier: LoginDvo.getLoginQuerier("aaaaaa", "111111"), success: { (data) in
            let model = try!  JSONDecoder().decode(LoginDvo.self, from: data)
            if model.error == 0{                
                token = model.token
                let tabbar = self.storyboard?.instantiateViewController(withIdentifier: "MainTabbar")
                UIApplication.shared.keyWindow?.rootViewController = tabbar

                
            }else{
                
            }
        }) { (error) in
            
        }
    }
    
    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
