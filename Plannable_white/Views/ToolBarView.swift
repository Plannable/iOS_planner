//
//  ToolBarView.swift
//  Plannable_white
//
//  Created by shane davis on 29/03/2017.
//  Copyright © 2017 shane davis. All rights reserved.
//

import UIKit

class ToolBarView: UIView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        loadViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        
        
        
    }
    
    func loadViews() {
        print("loading ivews")
        
        let dateInput = UITextField()
        dateInput.placeholder = "Choose a Date"
        dateInput.frame = CGRect(x: 25, y: 55, width: 215, height: 30)
        
        let DatePickerView  : UIDatePicker = UIDatePicker()
        DatePickerView.datePickerMode = UIDatePickerMode.date
        
        dateInput.inputView = DatePickerView
        
        
        
        let date_label = UILabel(frame: CGRect(x: 25, y: 30, width: 200, height: 30))
        date_label.text = "Date"
        date_label.font = UIFont.boldSystemFont(ofSize: 18)
        
        let tags_label = UILabel(frame: CGRect(x: 280, y: 30, width: 200, height: 30))
        tags_label.text = "Tags"
        tags_label.font = UIFont.boldSystemFont(ofSize: 18)
        
        let tagsInput = UITextField()
        tagsInput.frame = CGRect(x: 280, y: 55, width: 215, height: 30)
        tagsInput.placeholder = "Filter on a tag"
        
        
        let refLabel = UILabel()
        refLabel.text = "Reference"
        refLabel.frame = CGRect(x: 535, y: 30, width: 300, height: 30)
        refLabel.font = UIFont.boldSystemFont(ofSize: 18)
        
        let refInput = UITextField(frame: CGRect(x: 535, y: 55, width: 200, height: 30))
        refInput.placeholder = "Search for job"
        
        
        
        
        self.addSubview(date_label)
        self.addSubview(dateInput)
        self.addSubview(tags_label)
        self.addSubview(tagsInput)
        self.addSubview(refLabel)
        self.addSubview(refInput)
    }
}
