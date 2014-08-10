//
//  ViewController.swift
//  PM25
//
//  Created by scott on 14-6-7.
//  Copyright (c) 2014年 scott. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let indexSet = ["A","B","C","D","E","F","G","H","J","K","L","M","N","P","Q","R","S","T","W","X","Y","Z"]
    
    let dataSet = [
        ["鞍山","安阳"],
        ["保定","宝鸡","包头","北海","北京","本溪","滨州"],
        ["沧州","长春","常德","长沙","常熟","长治","常州","潮州","承德","成都","赤峰","重庆"],
        ["大连","丹东","大庆","大同","德阳","德州","东莞","东营"],
        ["鄂尔多斯"],
        ["佛山","抚顺","富阳","福州"],
        ["广州","桂林","贵阳"],
        ["哈尔滨","海口","海门","邯郸","杭州","合肥","衡水","河源","菏泽","淮安","呼和浩特","惠州","葫芦岛","湖州"],
        ["江门","江阴","胶南","胶州","焦作","嘉兴","嘉峪关","揭阳","吉林","即墨","济南","金昌","荆州","金华","济宁","金坛","锦州","九江","句容"],
        ["开封","克拉玛依","库尔勒","昆明","昆山"],
        ["莱芜","莱西","莱州","廊坊","兰州","拉萨","连云港","聊城","临安","临汾","临沂","丽水","柳州","溧阳","洛阳","泸州"],
        ["马鞍山","茂名","梅州","绵阳","牡丹江"],
        ["南昌","南充","南京","南宁","南通","宁波"],
        ["盘锦","攀枝花","蓬莱","平顶山","平度"],
        ["青岛","清远","秦皇岛","齐齐哈尔","泉州","曲靖","衢州"],
        ["日照","荣成","乳山"],
        ["三门峡","三亚","上海","汕头","汕尾","韶关","绍兴","沈阳","深圳","石家庄","石嘴山","寿光","宿迁","苏州"],
        ["泰安","太仓","太原","台州","泰州","唐山","天津","铜川"],
        ["瓦房店","潍坊","威海","渭南","文登","温州","武汉","芜湖","吴江","乌鲁木齐","无锡"],
        ["厦门","西安","湘潭","咸阳","邢台","西宁","徐州"],
        ["延安","盐城","阳江","阳泉","扬州","烟台","宜宾","宜昌","银川","营口","义乌","宜兴","岳阳","云浮","玉溪"],
        ["枣庄","张家港","张家界","张家口","章丘","湛江","肇庆","招远","郑州","镇江","中山","舟山","珠海","诸暨","株洲","淄博","自贡","遵义"]
    ]
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //设置导航栏名称
        //self.navigationItem.title="全国主要城市PM2.5"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //导航栏关于按钮
    @IBAction func about(sender : AnyObject) {
        SCLAlertView().showInfo(self,title: "关于", subTitle: "该应用数据来源于pm25.in。仅供学习交流,请勿用于商业用途!\nQQ:184675420")
    }
    
    
    // #pragma mark - UITableViewDataSource
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        
        return indexSet.count
        
    }
    
    // #pragma mark - UITableViewDataSource
    override func sectionIndexTitlesForTableView(tableView: UITableView!) -> [AnyObject]!{
        
        return indexSet
        
    }
    
    
    // #pragma mark - UITableViewDataSource
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        
        return dataSet[section].count
        
    }
    
    // #pragma mark - UITableViewDataSource
    override func tableView(tableView: UITableView!, titleForHeaderInSection section: Int) -> String!{
        
        return indexSet[section]
        
    }
    
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        
        let reuseIdentifier = "Cell"
        
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier) as  UITableViewCell
        
        if cell == nil {
            cell = UITableViewCell(style:.Default,reuseIdentifier:reuseIdentifier)
        }
        
        cell.textLabel.text = dataSet[indexPath.section][indexPath.row]
        
        return cell
        
    }
    
    // #pragma mark - UITableViewDelegate
    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!){
        
        //显示DetailsViewController
        
        //let detailsViewController:DetailsViewController = DetailsViewController()
        
        //detailsViewController.city = tableData[indexPath.row] as String
        
        //self.navigationController.pushViewController(detailsViewController, animated: true)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!){
        
        if segue.identifier == "Detail" {
            if segue.destinationViewController is DetailsViewController {
                var detailsViewController:DetailsViewController = segue.destinationViewController as DetailsViewController
                detailsViewController.city = dataSet[self.tableView.indexPathForSelectedRow().section][self.tableView.indexPathForSelectedRow().row] as String
            }
        }
        
    }
    
    
}

