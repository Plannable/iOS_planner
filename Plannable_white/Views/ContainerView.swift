//
//  ContainerView.swift
//  Plannable_white
//
//  Created by shane davis on 29/03/2017.
//  Copyright © 2017 shane davis. All rights reserved.
//

import UIKit

class ContainerView: UIView {

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
    
    func LoadViews(){
        print("loading views in ContainerView")
        
        self.backgroundColor = Style.backgroundColor
        self.layer.addBorder(edge: UIRectEdge.top, color: Style.borderColor!, thickness: 1)
        
        
        
        
    }
}
