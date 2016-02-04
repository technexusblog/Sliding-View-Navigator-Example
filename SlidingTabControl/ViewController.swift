//
//  ViewController.swift
//  SlidingTabControl
//
//  Created by TechNexus on 2/2/16.
//  Copyright © 2016 TechNexus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topMenuContainerView : UIView!
    
    @IBOutlet weak var topMenuCollectionView : UICollectionView!
    
    @IBOutlet weak var topMenuScrollView : UIScrollView!
    @IBOutlet weak var highlightView : UIView!
    
    @IBOutlet weak var highlightViewLeftConstraint : NSLayoutConstraint!
    
    @IBOutlet weak var firstTabView : UIView!
    @IBOutlet weak var secondTabView : UIView!
    @IBOutlet weak var thirdTabView : UIView!
    @IBOutlet weak var fourthTabView : UIView!

    
    
    var tabArray : Array<String> = ["RED","BLUE","GREEN","YELLOW"]
    var collectionViewCellWidth = 202
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    override func prefersStatusBarHidden() -> Bool {
        
        return true
        
    }
}

extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate ,UIScrollViewDelegate{
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return tabArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let collectionCell = collectionView.dequeueReusableCellWithReuseIdentifier("TopBarCollectionViewCell", forIndexPath: indexPath) as! TopBarCollectionViewCell
        collectionCell.titleLbl.text = tabArray[indexPath.row]
        return collectionCell
    }
    
    
}

