//
//  BrandCollectionViewCell.swift
//  FranchiseMenu
//
//  Created by ImHobeom on 2016. 10. 14..
//  Copyright © 2016년 ImHobeom. All rights reserved.
//

import UIKit
protocol BrandCollectionViewDelegate : class
{
    func buttonTapped(cell : BrandCollectionViewCell)
}
class BrandCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var brandButton: UIButton!
    
    var delegate : BrandCollectionViewDelegate?
   
    @IBAction func goWebViewAction(_ sender: UIButton)
    {
        self.delegate?.buttonTapped(cell: self)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.delegate = nil
        
    }
    
    func setButtonImage (_ imgName:String)
    {
        brandButton.setImage(UIImage(named:imgName), for: .normal)
    }
}
