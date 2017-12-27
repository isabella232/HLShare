//
//  ViewController.swift
//  HLShare
//
//  Created by HLApple on 2017/12/21.
//  Copyright © 2017年 HLApple. All rights reserved.
//

import UIKit
import HandyJSON
class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    /// 列表
    @IBOutlet weak var homeTableView: UITableView!
    
    var demandsModel: DemandsResult?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.homeTableView.rowHeight = 500
        
        HLBasePresenter.execute(HandyJSON: DemandsResult.self, querier: HomeNao.getBuyerOrder(), success: {[unowned self] (dvo) in
            let demands =  dvo as! DemandsResult
            self.demandsModel = demands
            self.homeTableView.reloadData()
        }) { (code, error) in
            
        }
    }
   

    
    /// 供求与需求 切换
    ///
    /// - Parameter sender: 
    @IBAction func changedDemandSide(_ sender: UISegmentedControl) {
        
    }
    
    /// 地图与列表 切换
    ///
    /// - Parameter sender: <#sender description#>
    @IBAction func chnagedMapView(_ sender: UIBarButtonItem) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath) as! HomeTableViewCell
        
        if let model = self.demandsModel {
            
            
            cell.contentLabel.text =
            """
            id: \(model.demands![indexPath.row].id!)
            name: \(model.demands![indexPath.row].name!)
            modifyTime: \(model.demands![indexPath.row].modifyTime!)
            fromMe: \(model.demands![indexPath.row].fromMe!)
            content: \(model.demands![indexPath.row].content!)
            latitude: \(model.demands![indexPath.row].latitude!)
            longitude: \(model.demands![indexPath.row].longitude!)
            createTime: \(model.demands![indexPath.row].createTime!)
            price: \(model.demands![indexPath.row].price)
            fileDvos.filePath: \(model.demands![indexPath.row].fileDvos?.first?.filePath! ?? "空 path")
            """
        }

       
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

