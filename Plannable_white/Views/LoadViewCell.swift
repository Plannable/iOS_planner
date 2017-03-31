//
//  LoadViewCell.swift
//  Plannable_white
//
//  Created by shane davis on 30/03/2017.
//  Copyright © 2017 shane davis. All rights reserved.
//
//
//  LoadView.swift
//  Plannable_white
//
//  Created by shane davis on 18/03/2017.
//  Copyright © 2017 shane davis. All rights reserved.
//

import UIKit

class LoadViewCell: UICollectionViewCell {
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        
        self.layer.borderColor = Style.loadBorderColor?.cgColor
        self.layer.borderWidth = 1
    }
    
    func loadViews(){
        
//        self.layer.borderColor = UIColor.gray.cgColor
        //        self.layer.borderColor = UIColor(hexString: "ff0000ff")?.cgColor
//        self.layer.borderWidth = 1
//        self.layer.cornerRadius = 2
        //        self.backgroundColor = UIColor.white
        
        let pick_title_label = UILabel(frame: CGRect(x:50 , y: 12, width: 146.39, height: 15))
        pick_title_label.text = "Death Star packaging"
        pick_title_label.font = UIFont.systemFont(ofSize: 14)
        //        pick_title_label.textColor = UIColor(hexString: "#4a4a4aff")
        
        let pick_address_1_label = UILabel(frame: CGRect(x:50 , y: 30, width: 116, height: 14))
        pick_address_1_label.text = "5  Some star system"
        pick_address_1_label.font = UIFont.systemFont(ofSize: 12, weight: UIFontWeightThin)
        //        pick_address_1_label.textColor = UIColor(hexString: "9B9B9Bff")
        
        let pick_address_2_label = UILabel(frame: CGRect(x:50 , y: 47, width: 116, height: 12))
        pick_address_2_label.text = "Sigma Quadrant"
        pick_address_2_label.font = .systemFont(ofSize: 10, weight: UIFontWeightThin)
        //        pick_address_2_label.textColor = UIColor(hexString: "9B9B9Bff")
        
        
        self.contentView.addSubview(pick_title_label)
        self.contentView.addSubview(pick_address_1_label)
        self.contentView.addSubview(pick_address_2_label)
        
        
    }
}
