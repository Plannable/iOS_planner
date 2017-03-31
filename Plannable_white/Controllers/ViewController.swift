//
//  ViewController.swift
//  Plannable_white
//
//  Created by shane davis on 15/03/2017.
//  Copyright © 2017 shane davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    fileprivate let sectionInsets = UIEdgeInsets(top: 0.0, left: 10.0, bottom: 0.0, right: 10.0)
    
    fileprivate let itemsPerRow: CGFloat = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        let header_view = HeaderView(frame: CGRect(x: 0, y: 0, width: 1024, height: 83))
        header_view.uploadBtn.addTarget(self, action: #selector(ViewController.uploadTapped), for: UIControlEvents.touchUpInside)
        
        let containerView = ContainerView(frame:CGRect(x: 0, y: 190, width: 1024, height: 580))        
        let toolBar_view = ToolBarView(frame: CGRect(x: 0, y: 84, width: 1024, height: 110))
//        toolBar_view.layer.borderColor = UIColor.red.cgColor
//        toolBar_view.layer.borderWidth = 1
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 120, height: 80)
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 230, width: 1024, height: 124), collectionViewLayout:layout)
        collectionView.backgroundColor = UIColor.white
        collectionView.delegate = self
        collectionView.dataSource = self;
        collectionView.register(LoadViewCell.self, forCellWithReuseIdentifier: "Cell")
        
        
        collectionView.isPagingEnabled = true
        collectionView.isScrollEnabled = true
        collectionView.setContentOffset(CGPoint(x: 0,y: 0), animated: true)
//        collectionView.layer.borderColor = UIColor.red.cgColor
//        collectionView.layer.borderWidth = 1

        view.addSubview(containerView)
        view.addSubview(header_view)
        view.addSubview(collectionView)
        view.addSubview(toolBar_view)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func uploadTapped(){

        
        let alert = UIAlertController(title: "Upload", message: "Import some data", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Accept", style: UIAlertActionStyle.default, handler: { (alertAction) -> Void in
                print("jabawakkee")
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
//    MARK: - Collection view methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 30
    }
    

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! LoadViewCell
        return cell
    }


    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
//        let paddingSpace = sectionInsets.left * (itemsPerRow + 1 )
//        let availableWidth = collectionView.frame.width - paddingSpace
//        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: 210, height: 80.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}























