//
//  searchByMapViewController+CollectionView.swift
//  Lutong Bahay
//
//  Created by bd01 on 2/18/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

extension searchByMapViewController : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = searchItemCollectionView.dequeueReusableCell(withReuseIdentifier: CellConstant.PalutoDishesCell, for: indexPath) as! PalutoDishesCollectionViewCell
           return cell
       }
}
