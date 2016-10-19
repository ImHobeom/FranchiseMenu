//
//  BrandCollectioinView.swift
//  FranchiseMenu
//
//  Created by ImHobeom on 2016. 10. 14..
//  Copyright © 2016년 ImHobeom. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class BrandCollectioinView: UICollectionViewController, BrandCollectionViewDelegate {
   
    var segueIndex : Int = 0
    
//    var cell : BrandCollectionViewCell = BrandCollectionViewCell()
    
    let coffeeBrandDic = [["URL": "http://www.istarbucks.co.kr/menu/drink_list.do","img": "starbucks.png"],["URL": "http://www.caffebene.co.kr/Content/Gnb/Menu/MenuAll.aspx?code=T2M3I0","img": "caffebene.jpeg"]]
    
    let fastFoodDic = [["URL": "http://www.mcdonalds.co.kr/www/kor/menu/menu_list.do?cate_cd=100","img": "mcdonald.png"],["URL": "http://www.burgerking.co.kr/","img": "burgerking.png"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if segueIndex == 0
        {
            self.title = "카페"
        }
        else if segueIndex == 1
        {
            self.title = "패스트 푸드"
        }
        else if segueIndex == 2
        {
            self.title = "치킨"
        }
        else if segueIndex == 3
        {
            self.title = "레스토랑"
        }
        else if segueIndex == 4
        {
            self.title = "분식"
        }
        
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 50
//    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        if segueIndex == 0
        {
            return coffeeBrandDic.count
        }
        else if segueIndex == 1
        {
            return fastFoodDic.count
        }
        else
        {
            return 0
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "brandCell", for: indexPath) as! BrandCollectionViewCell
        
        cell.delegate = self
        
        let coffeeTemp = coffeeBrandDic[indexPath.row]
        let fastFoodTemp = fastFoodDic[indexPath.row]
        
        if segueIndex == 0 //카페
        {
            if coffeeTemp["img"] == "starbucks.png"
            {
                cell.setButtonImage(coffeeTemp["img"]!)
                
            }
            else if coffeeTemp["img"] == "caffebene.jpeg"
            {
                cell.setButtonImage(coffeeTemp["img"]!)
            }
        }
        else if segueIndex == 1 // 패스트푸드
        {
            if fastFoodTemp["img"] == "mcdonald.png"
            {
                cell.setButtonImage(fastFoodTemp["img"]!)
            }
            else if fastFoodTemp["img"] == "burgerking.png"
            {
                cell.setButtonImage(fastFoodTemp["img"]!)
            }
        }
        else if segueIndex == 2 //치킨
        {
            
        }
        else if segueIndex == 3 //레스토랑
        {
            
        }
        else if segueIndex == 4 //분식
        {
            
        }
        // Configure the cell
    
        return cell
    }
    
    func buttonTapped(cell argCell : BrandCollectionViewCell)
    {
        guard let indexPath = self.collectionView?.indexPath(for: argCell)
            else
        {
            return
        }
        segueIndex = indexPath.row
        print("Button tapped on row \(indexPath.row)")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "showWebView"
        {
            (segue.destination as! MenuWebView).brandIndex = segueIndex
        }
    }


    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
  
}
