//
//  ViewController.swift
//  UICollectionView-swift
//
//  Created by chedao on 15/12/11.
//  Copyright © 2015年 chedao. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    var collectionVIew:UICollectionView?
    var dataArr:NSArray?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dataArr = [["icon":"1","name":"汽车1"],["icon":"2","name":"汽车2"],["icon":"3","name":"汽车3"],["icon":"1","name":"汽车1"],["icon":"2","name":"汽车2"],["icon":"3","name":"汽车3"]]
       let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.minimumLineSpacing = 20;
        collectionVIew = UICollectionView(frame: CGRectMake(0, 20, self.view.bounds.width, self.view.bounds.height), collectionViewLayout: collectionViewLayout)
        collectionVIew?.delegate = self
        collectionVIew?.dataSource = self
        collectionVIew!.backgroundColor = UIColor.orangeColor()
        self.view.addSubview(collectionVIew!)
        collectionVIew!.registerNib(UINib(nibName: "NameCell", bundle: nil
            ), forCellWithReuseIdentifier: "cell")
        collectionVIew!.reloadData()

        
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArr!.count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! NameCell
        cell .packCell(dataArr![indexPath.row] as! NSDictionary)
        
        return cell
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
            print("点击了\(indexPath.row)")
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let size = CGSize(width: 130, height: 130)
        return size
        
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 20, left: 20, bottom: 50, right: 20)
    }
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

