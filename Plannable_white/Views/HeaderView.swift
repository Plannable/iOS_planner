//
//  HeaderView.swift
//  Plannable_white
//
//  Created by shane davis on 15/03/2017.
//  Copyright © 2017 shane davis. All rights reserved.
//

import UIKit


class HeaderView: UIView {
    
    let uploadBtn   = UIButton()
    let settingsBtn = UIButton()
    let userBtn     = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        
        LoadViews()
        
    }
    
    
    
    
    
    func LoadViews()  {
        
        
//        MARK: Upload button
        uploadBtn.frame = CGRect(x: 790, y: 38, width: 50, height: 14)
        uploadBtn.setTitle("UPLOAD", for: UIControlState.normal)
        uploadBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        uploadBtn.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: UIFontWeightThin)
        
//        MARK: SETTINGS button
        settingsBtn.frame = CGRect(x: 870, y: 38, width: 60, height: 14)
        settingsBtn.setTitle("SETTINGS", for: UIControlState.normal)
        settingsBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        settingsBtn.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: UIFontWeightThin)
        
 //        MARK: USER button
        userBtn.frame = CGRect(x: 954, y: 38, width: 50, height: 14)
        userBtn.setTitle("SHANE", for: UIControlState.normal)
        userBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        userBtn.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: UIFontWeightThin)
        
        self.backgroundColor = Style.backgroundColor
        self.layer.addBorder(edge: UIRectEdge.bottom, color: Style.borderColor!, thickness: 1)
        
        
        
        
        
        let LogoView = UIImageView(frame: CGRect(x: 25, y: 30, width: 25, height: 29))
        LogoView.image = UIImage(named: "Logo_color")
        
        
        let label = UILabel(frame: CGRect(x: 66, y: 30, width: 150, height: 28))
        label.text = "Plannable"
        label.font = UIFont.systemFont(ofSize: 28, weight: UIFontWeightThin)
        label.textColor = UIColor(hexString: "#000000ff")

        
        self.addSubview(LogoView)
        self.addSubview(label)
        
        self.addSubview(uploadBtn)
        self.addSubview(settingsBtn)
        self.addSubview(userBtn)
        
        print("loaded!")
    }
    
    func uploadTapped() {
        
        print("tapped")
        
        
        
        
        
    }
    

}

