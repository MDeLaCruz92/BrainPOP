//
//  MainVC.swift
//  BrainPOP
//
//  Created by Michael De La Cruz on 11/17/16.
//  Copyright © 2016 Michael De La Cruz. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {
    
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var ds: DataService = DataService.instance
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ds.delegate = self
        ds.loadBrainFreezeData()
        ds.brainArray.shuffle()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        headerView.addDropShadow()
        
       
        let nib = UINib(nibName: "BrainFreezeCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "BrainFreezeCell")
 
        
        // collectionView.register(BrainFreezeCell.self)
    }
    
    func brainFreezeLoaded() {
        print("Brain Freeze data has been loaded!")
    }
}
extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
    {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return ds.brainArray.count
        }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BrainFreezeCell", for: indexPath) as? BrainFreezeCell {
            cell.configureCell(brain: ds.brainArray[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
 
       /*
       let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as BrainFreezeCell
         cell.configureCell(brain: ds.brainArray[indexPath.row])
       return cell
       */
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? BrainFreezeCell {
            cell.shake()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }
    
    
    
}


