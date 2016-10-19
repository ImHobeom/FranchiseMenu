//
//  MenuWebView.swift
//  FranchiseMenu
//
//  Created by ImHobeom on 2016. 10. 13..
//  Copyright © 2016년 ImHobeom. All rights reserved.
//

import UIKit

class MenuWebView: UIViewController ,UIWebViewDelegate{

    @IBOutlet var menuWebSite: UIWebView!
    
    var caffeURL : String = "http://www.istarbucks.co.kr/menu/drink_list.do"
    
    var brandIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var urlString = caffeURL
        
        print("brandIndex\(brandIndex)")
        
        if brandIndex == 0
        {
            urlString = "http://www.istarbucks.co.kr/menu/drink_list.do"
        }
        else if brandIndex == 1
        {
            urlString = "http://www.caffebene.co.kr/Content/Gnb/Menu/Best.aspx"
        }
        
        menuWebSite.loadRequest(URLRequest(url : URL(string : urlString)!))
        
        // Do any additional setup after loading the view.
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
