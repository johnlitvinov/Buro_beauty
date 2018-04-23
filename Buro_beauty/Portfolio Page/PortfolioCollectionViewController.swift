//
//  PortfolioCollectionViewController.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 3/29/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class PortfolioCollectionViewController: UICollectionViewController {
    
    //    array with images for portfolio
    var imageList = ["port1", "port2", "port3", "port4", "port5", "port6", "port7", "port8", "port9", "port10", "port11", "port12", "port13", "port14", "port15", "port16", "port17", "port18", "port19", "port20", "port21" , "port22", "port23", "port24", "port25", "port26", "port27", "port28", "port29", "port30", "port31", "port32", "port33", "port34", "port35", "port36", "port37", "port38", "port39", "port40" ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   
    
    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageList.count
    }
    
    
    // parameters for cell
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PortfolioCollectionViewCell
        cell.cellImage.layer.cornerRadius = 12
        cell.cellImage.layer.borderWidth = 1.0
        cell.cellImage.image = UIImage(named: imageList[indexPath.row])
        // Configure the cell
        return cell
    }
    
}  //end class
