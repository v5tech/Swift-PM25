//
//  DetailsViewController.swift
//  PM25
//
//  Created by scott on 14-6-7.
//  Copyright (c) 2014年 scott. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    let pm25Data=[
        "葫芦岛":"http://www.pm25.in/huludao",
        "泉州":"http://www.pm25.in/quanzhou",
        "赤峰":"http://www.pm25.in/chifeng",
        "营口":"http://www.pm25.in/yingkou",
        "大连":"http://www.pm25.in/dalian",
        "瓦房店":"http://www.pm25.in/wafangdian",
        "厦门":"http://www.pm25.in/xiamen",
        "湛江":"http://www.pm25.in/zhanjiang",
        "盘锦":"http://www.pm25.in/panjin",
        "海口":"http://www.pm25.in/haikou",
        "蓬莱":"http://www.pm25.in/penglai",
        "吉林":"http://www.pm25.in/jilin",
        "汕头":"http://www.pm25.in/shantou",
        "福州":"http://www.pm25.in/fuzhou",
        "大庆":"http://www.pm25.in/daqing",
        "三亚":"http://www.pm25.in/sanya",
        "锦州":"http://www.pm25.in/jinzhou",
        "梅州":"http://www.pm25.in/meizhou",
        "深圳":"http://www.pm25.in/shenzhen",
        "舟山":"http://www.pm25.in/zhoushan",
        "秦皇岛":"http://www.pm25.in/qinhuangdao",
        "肇庆":"http://www.pm25.in/zhaoqing",
        "烟台":"http://www.pm25.in/yantai",
        "哈尔滨":"http://www.pm25.in/haerbin",
        "承德":"http://www.pm25.in/chengde",
        "齐齐哈尔":"http://www.pm25.in/qiqihaer",
        "中山":"http://www.pm25.in/zhongshan",
        "珠海":"http://www.pm25.in/zhuhai",
        "阳江":"http://www.pm25.in/yangjiang",
        "玉溪":"http://www.pm25.in/yuxi",
        "西宁":"http://www.pm25.in/xining",
        "台州":"http://www.pm25.in/taizhou",
        "潮州":"http://www.pm25.in/chaozhou",
        "宁波":"http://www.pm25.in/ningbo",
        "荣成":"http://www.pm25.in/rongcheng",
        "乳山":"http://www.pm25.in/rushan",
        "张家口":"http://www.pm25.in/zhangjiakou",
        "抚顺":"http://www.pm25.in/fushun",
        "东莞":"http://www.pm25.in/dongguan",
        "泰安":"http://www.pm25.in/taian",
        "沈阳":"http://www.pm25.in/shenyang",
        "莱州":"http://www.pm25.in/laizhou",
        "云浮":"http://www.pm25.in/yunfu",
        "文登":"http://www.pm25.in/wendeng",
        "本溪":"http://www.pm25.in/benxi",
        "河源":"http://www.pm25.in/heyuan",
        "汕尾":"http://www.pm25.in/shanwei",
        "威海":"http://www.pm25.in/weihai",
        "揭阳":"http://www.pm25.in/jieyang",
        "温州":"http://www.pm25.in/wenzhou",
        "清远":"http://www.pm25.in/qingyuan",
        "平度":"http://www.pm25.in/pingdu",
        "曲靖":"http://www.pm25.in/qujing",
        "惠州":"http://www.pm25.in/huizhou",
        "北海":"http://www.pm25.in/beihai",
        "昆明":"http://www.pm25.in/kunming",
        "茂名":"http://www.pm25.in/maoming",
        "德州":"http://www.pm25.in/dezhou",
        "鞍山":"http://www.pm25.in/anshan",
        "招远":"http://www.pm25.in/zhaoyuan",
        "宝鸡":"http://www.pm25.in/baoji",
        "滨州":"http://www.pm25.in/binzhou",
        "银川":"http://www.pm25.in/yinchuan",
        "廊坊":"http://www.pm25.in/langfang",
        "北京":"http://www.pm25.in/beijing",
        "呼和浩特":"http://www.pm25.in/huhehaote",
        "丹东":"http://www.pm25.in/dandong",
        "长春":"http://www.pm25.in/changchun",
        "青岛":"http://www.pm25.in/qingdao",
        "金昌":"http://www.pm25.in/jinchang",
        "即墨":"http://www.pm25.in/jimo",
        "盐城":"http://www.pm25.in/yancheng",
        "大同":"http://www.pm25.in/datong",
        "韶关":"http://www.pm25.in/shaoguan",
        "莱西":"http://www.pm25.in/laixi",
        "洛阳":"http://www.pm25.in/luoyang",
        "长治":"http://www.pm25.in/changzhi",
        "上海":"http://www.pm25.in/shanghai",
        "开封":"http://www.pm25.in/kaifeng",
        "库尔勒":"http://www.pm25.in/kuerle",
        "重庆":"http://www.pm25.in/chongqing",
        "克拉玛依":"http://www.pm25.in/kelamayi",
        "嘉峪关":"http://www.pm25.in/jiayuguan",
        "柳州":"http://www.pm25.in/liuzhou",
        "咸阳":"http://www.pm25.in/xianyang",
        "莱芜":"http://www.pm25.in/laiwu",
        "天津":"http://www.pm25.in/tianjin",
        "太原":"http://www.pm25.in/taiyuan",
        "石家庄":"http://www.pm25.in/shijiazhuang",
        "济宁":"http://www.pm25.in/jining",
        "包头":"http://www.pm25.in/baotou",
        "宜宾":"http://www.pm25.in/yibin",
        "淄博":"http://www.pm25.in/zibo",
        "乌鲁木齐":"http://www.pm25.in/wulumuqi",
        "泸州":"http://www.pm25.in/luzhou",
        "自贡":"http://www.pm25.in/zigong",
        "唐山":"http://www.pm25.in/tangshan",
        "海门":"http://www.pm25.in/haimen",
        "江门":"http://www.pm25.in/jiangmen",
        "贵阳":"http://www.pm25.in/guiyang",
        "章丘":"http://www.pm25.in/zhangqiu",
        "邢台":"http://www.pm25.in/xingtai",
        "鄂尔多斯":"http://www.pm25.in/eerduosi",
        "广州":"http://www.pm25.in/guangzhou",
        "阳泉":"http://www.pm25.in/yangquan",
        "牡丹江":"http://www.pm25.in/mudanjiang",
        "三门峡":"http://www.pm25.in/sanmenxia",
        "南宁":"http://www.pm25.in/nanning",
        "吴江":"http://www.pm25.in/wujiang",
        "西安":"http://www.pm25.in/xian",
        "石嘴山":"http://www.pm25.in/shizuishan",
        "铜川":"http://www.pm25.in/tongchuan",
        "攀枝花":"http://www.pm25.in/panzhihua",
        "佛山":"http://www.pm25.in/foshan",
        "荆州":"http://www.pm25.in/jingzhou",
        "胶州":"http://www.pm25.in/jiaozhou",
        "枣庄":"http://www.pm25.in/zaozhuang",
        "平顶山":"http://www.pm25.in/pingdingshan",
        "胶南":"http://www.pm25.in/jiaonan",
        "兰州":"http://www.pm25.in/lanzhou",
        "遵义":"http://www.pm25.in/zunyi",
        "保定":"http://www.pm25.in/baoding",
        "昆山":"http://www.pm25.in/kunshan",
        "丽水":"http://www.pm25.in/lishui",
        "常熟":"http://www.pm25.in/changshu",
        "太仓":"http://www.pm25.in/taicang",
        "徐州":"http://www.pm25.in/xuzhou",
        "寿光":"http://www.pm25.in/shouguang",
        "绵阳":"http://www.pm25.in/mianyang",
        "东营":"http://www.pm25.in/dongying",
        "渭南":"http://www.pm25.in/weinan",
        "济南":"http://www.pm25.in/jinan",
        "延安":"http://www.pm25.in/yanan",
        "焦作":"http://www.pm25.in/jiaozuo",
        "郑州":"http://www.pm25.in/zhengzhou",
        "安阳":"http://www.pm25.in/anyang",
        "南通":"http://www.pm25.in/nantong",
        "邯郸":"http://www.pm25.in/handan",
        "潍坊":"http://www.pm25.in/weifang",
        "成都":"http://www.pm25.in/chengdu",
        "张家界":"http://www.pm25.in/zhangjiajie",
        "衢州":"http://www.pm25.in/quzhou",
        "衡水":"http://www.pm25.in/hengshui",
        "临汾":"http://www.pm25.in/linfen",
        "聊城":"http://www.pm25.in/liaocheng",
        "嘉兴":"http://www.pm25.in/jiaxing",
        "宜昌":"http://www.pm25.in/yichang",
        "菏泽":"http://www.pm25.in/heze",
        "桂林":"http://www.pm25.in/guilin",
        "江阴":"http://www.pm25.in/jiangyin",
        "张家港":"http://www.pm25.in/zhangjiagang",
        "常德":"http://www.pm25.in/changde",
        "宿迁":"http://www.pm25.in/suqian",
        "岳阳":"http://www.pm25.in/yueyang",
        "长沙":"http://www.pm25.in/changsha",
        "南充":"http://www.pm25.in/nanchong",
        "杭州":"http://www.pm25.in/hangzhou",
        "湘潭":"http://www.pm25.in/xiangtan",
        "沧州":"http://www.pm25.in/cangzhou",
        "拉萨":"http://www.pm25.in/lasa",
        "常州":"http://www.pm25.in/changzhou",
        "宜兴":"http://www.pm25.in/yixing",
        "苏州":"http://www.pm25.in/suzhou",
        "株洲":"http://www.pm25.in/zhuzhou",
        "南昌":"http://www.pm25.in/nanchang",
        "无锡":"http://www.pm25.in/wuxi",
        "淮安":"http://www.pm25.in/huaian",
        "富阳":"http://www.pm25.in/fuyang",
        "绍兴":"http://www.pm25.in/shaoxing",
        "临沂":"http://www.pm25.in/linyi",
        "湖州":"http://www.pm25.in/huzhou",
        "九江":"http://www.pm25.in/jiujiang",
        "泰州":"http://www.pm25.in/taizhoushi",
        "日照":"http://www.pm25.in/rizhao",
        "溧阳":"http://www.pm25.in/liyang",
        "德阳":"http://www.pm25.in/deyang",
        "临安":"http://www.pm25.in/linan",
        "连云港":"http://www.pm25.in/lianyungang",
        "金华":"http://www.pm25.in/jinhua",
        "义乌":"http://www.pm25.in/yiwu",
        "芜湖":"http://www.pm25.in/wuhu",
        "诸暨":"http://www.pm25.in/zhuji",
        "马鞍山":"http://www.pm25.in/maanshan",
        "金坛":"http://www.pm25.in/jintan",
        "武汉":"http://www.pm25.in/wuhan",
        "镇江":"http://www.pm25.in/zhenjiang",
        "南京":"http://www.pm25.in/nanjing",
        "扬州":"http://www.pm25.in/yangzhou",
        "句容":"http://www.pm25.in/jurong",
        "合肥":"http://www.pm25.in/hefei"
    ]
    
    
    @IBOutlet var lblCity : UILabel
    
    @IBOutlet var lblLevel : UILabel

    @IBOutlet var lblUptime : UILabel
    
    @IBOutlet var lblUnit : UILabel
    
    @IBOutlet var lblAqi : UILabel
    
    @IBOutlet var lblPm25 : UILabel
    
    @IBOutlet var lblPm10 : UILabel
    
    @IBOutlet var lblCo : UILabel
    
    @IBOutlet var lblNo2 : UILabel
    
    @IBOutlet var lblO31 : UILabel
    
    @IBOutlet var lblO38 : UILabel
    
    @IBOutlet var lblSo2 : UILabel
    
    @IBOutlet var lblPollutant : UILabel
    
    @IBOutlet var lblAffect : UILabel
    
    @IBOutlet var lblAction : UILabel
    
    @IBOutlet var imageView1 : UIImageView

    @IBOutlet var imageView2 : UIImageView
    
    @IBOutlet var imageView3 : UIImageView
    
    @IBOutlet var imageView4 : UIImageView
    
    @IBOutlet var imageView5 : UIImageView
    
    @IBOutlet var imageView6 : UIImageView
    
    @IBOutlet var imageView7 : UIImageView
    
    @IBOutlet var imageView8 : UIImageView
    
    var city:String?
    
    var url:String?
    
    override func viewDidLoad(){
        
        super.viewDidLoad()
        
        //设置ImageView圆角
        setImageView()
        
        SVProgressHUD.show()
        
        self.title=city
        
        self.url=pm25Data[self.title]

        getData()
        
    }

    
    func setImageView(){
        
        imageView1.layer.masksToBounds = true
        imageView1.layer.cornerRadius = 30;
        
        imageView2.layer.masksToBounds = true
        imageView2.layer.cornerRadius = 30;
        
        imageView3.layer.masksToBounds = true
        imageView3.layer.cornerRadius = 30;
        
        imageView4.layer.masksToBounds = true
        imageView4.layer.cornerRadius = 30;
        
        imageView5.layer.masksToBounds = true
        imageView5.layer.cornerRadius = 30;
        
        imageView6.layer.masksToBounds = true
        imageView6.layer.cornerRadius = 30;
        
        imageView7.layer.masksToBounds = true
        imageView7.layer.cornerRadius = 30;
        
        imageView8.layer.masksToBounds = true
        imageView8.layer.cornerRadius = 30;
        
    }
    
    
    func getData(){
        
        var url: NSURL = NSURL(string: self.url)
        
        let request: NSURLRequest = NSURLRequest(URL: url)
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue(), completionHandler:{
            
            (response, data, error) -> Void in
            
            if error? {
              
                let alertView:UIAlertView = UIAlertView()
                alertView.title="提示"
                alertView.message="\(error.localizedDescription)"
                alertView.addButtonWithTitle("确定")
                alertView.show()
                
            }else{
                
                SVProgressHUD.dismiss()
                
                //let str:String = NSString(data: data, encoding: NSUTF8StringEncoding) as String
                
                self.parseData(data)

            }
            
        })
        
    }
    
    
    func parseData(data:NSData){
        
        var doc:TFHpple = TFHpple.hppleWithHTMLData(data,encoding:"UTF8")
        
        var city:TFHppleElement = doc.peekAtSearchWithXPathQuery("//div[@class='city_name']/h2")
        
        self.lblCity.text = self.city
        
        self.lblCity.text = city.firstChild.content?.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        
        var level:TFHppleElement = doc.peekAtSearchWithXPathQuery("//div[@class='level']/h4")
        
        self.lblLevel.text = level.firstChild.content?.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        
        var uptime:TFHppleElement = doc.peekAtSearchWithXPathQuery("//div[@class='live_data_time']/p")
        
        self.lblUptime.text = uptime.firstChild.content?.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        
        var unit:TFHppleElement = doc.peekAtSearchWithXPathQuery("//div[@class='live_data_unit']")
        self.lblUnit.text = unit.firstChild.content?.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        
        var caption:NSArray = doc.searchWithXPathQuery("//div[@class='span1']/div[@class='caption']")
        
        var value:NSArray = doc.searchWithXPathQuery("//div[@class='span1']/div[@class='value']")
        
        var captionStr:String[] = []
        
        var val:String[] = []
        
        for c:AnyObject in caption {
            captionStr += (c as TFHppleElement).firstChild.content.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        }
        
        for v:AnyObject in value {
            val += (v as TFHppleElement).firstChild.content.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        }
        
        
        self.lblAqi.text = val[0] + "\n" + captionStr[0]
        self.lblPm25.text = val[1] + "\n" + captionStr[1]
        self.lblPm10.text = val[2] + "\n" + captionStr[2]
        self.lblCo.text = val[3] + "\n" + captionStr[3]
        
        self.lblNo2.text = val[4] + "\n" + captionStr[4]
        self.lblO31.text = val[5] + "\n" + captionStr[5]
        self.lblO38.text = val[6] + "\n" + captionStr[6]
        self.lblSo2.text = val[7] + "\n" + captionStr[7]
        
        var pollutant:String = doc.peekAtSearchWithXPathQuery("//div[@class='primary_pollutant']/p").firstChild.content.stringByReplacingOccurrencesOfString("\n",withString:"").stringByReplacingOccurrencesOfString(" ",withString:"")
        
        self.lblPollutant.text = pollutant
        
        var affect:String = doc.peekAtSearchWithXPathQuery("//div[@class='affect']/p").firstChild.content.stringByReplacingOccurrencesOfString("\n",withString:"").stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet()).stringByReplacingOccurrencesOfString(" ",withString:"")
        
        self.lblAffect.text = affect
        
        var action:String = doc.peekAtSearchWithXPathQuery("//div[@class='action']/p").firstChild.content.stringByReplacingOccurrencesOfString("\n",withString:"").stringByReplacingOccurrencesOfString(" ",withString:"")
        
        self.lblAction.text = action
        
    }
    
}
