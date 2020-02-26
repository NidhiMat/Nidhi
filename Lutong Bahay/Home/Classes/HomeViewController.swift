//
//  HomeViewController.swift
//  Lutong Bahay
//
//  Created by Amit Mathur on 18/02/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    var images: [UIImage] = [#imageLiteral(resourceName: "Pinakbet"),#imageLiteral(resourceName: "13716101_1198845440147202_1407643426589257300_n"), #imageLiteral(resourceName: "methode times prod web bin"), #imageLiteral(resourceName: "pancit canton"), #imageLiteral(resourceName: "bbq"),#imageLiteral(resourceName: "chicken inasal")]
    @IBOutlet var trayView: LBView!
    
    
    @IBOutlet weak var tableView: UITableView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
    //    self.view.addSubview(trayView)
    //    trayView.frame = CGRect(x: 280, y: 700, width: 74, height: 74)
        // Do any additional setup after loading the view.
    }
    @objc func seeMoreBtnTapped(sender: Any) {
        
    }
    @objc func ratingBtnTapped() {}

}
extension HomeViewController: UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //Mark: CollectionView Delegates
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 22 {
            return images.count
        }
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 22 {
            let collectionCellNib = UINib(nibName: "PatokNaPagkainCollectionViewCell", bundle: nil)
            collectionView.register(collectionCellNib, forCellWithReuseIdentifier: "PatokNaPagkainCollectionViewCell")
            if let cell: PatokNaPagkainCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PatokNaPagkainCollectionViewCell", for: indexPath) as? PatokNaPagkainCollectionViewCell {
                cell.dishImage.image = images[indexPath.row]
                cell.dishType.text = "GRILLED"
                return cell
            }
        } else {
            let collectionCellNib = UINib(nibName: "PalutoDishesCollectionViewCell", bundle: nil)
            collectionView.register(collectionCellNib, forCellWithReuseIdentifier: "PalutoDishesCollectionViewCell")
            if let cell: PalutoDishesCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PalutoDishesCollectionViewCell", for: indexPath) as? PalutoDishesCollectionViewCell {
                
                cell.availableLbl.text = "Available Fridays"
                cell.deliveryTypeLbl.text = "PickUp Only"
                cell.dishImage.image = images[indexPath.row]
                cell.dishName.text = "Pancit Malabon"
                cell.distanceLbl.text = "0.9 KM"
                cell.mealTypeLbl.text = "Desert"
                cell.preOrderBtn.addTarget(self, action:#selector(self.ratingBtnTapped), for: .touchUpInside)
                cell.price.text = "PHP 250.00"
                cell.ratingBtn.addTarget(self, action:#selector(self.ratingBtnTapped), for: .touchUpInside)
                cell.ratingLbl.text = "4.0"
                cell.restName.text = "by Jenny's Pancit"
                
                return cell
            }
        }
        return UICollectionViewCell()
    }
    //Mark: TableView Delegates and Datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 11 {
            return 5
        }
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView.tag == 11 {
            if indexPath.row == 0 {
            if let cell: BagongTableViewCell = tableView.dequeueReusableCell(withIdentifier: "BagongCell") as? BagongTableViewCell {
                cell.tableView.tag = 2
                cell.tableView.dataSource = self
                cell.tableView.delegate = self
                cell.tableView.tableFooterView = UIView()
                cell.tableView.reloadData()
                cell.seeMoreBtn.tag = 1
                cell.seeMoreBtn.addTarget(self, action: #selector(self.seeMoreBtnTapped(sender:)), for: .touchUpInside)
                 return cell
                }
               
            } else if indexPath.row == 1 {
                if let cell: PatokTableViewCell = tableView.dequeueReusableCell(withIdentifier: "PatokCell") as? PatokTableViewCell {
                    cell.collectionView.tag = 22
                    cell.collectionView.delegate = self
                    cell.collectionView.dataSource = self
                    cell.collectionView.reloadData()
                    cell.seeMoreBtn.tag = 2
                    cell.seeMoreBtn.addTarget(self, action: #selector(self.seeMoreBtnTapped(sender:)), for: .touchUpInside)
                 return cell
                }
            } else if indexPath.row == 2 {
                if let cell: PalutoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "PalutoCell") as? PalutoTableViewCell {
                    cell.collectionView.tag = 33
                    cell.collectionView.delegate = self
                    cell.collectionView.dataSource = self
                    cell.collectionView.reloadData()
                    cell.seeMoreBtn.tag = 3
                    cell.seeMoreBtn.addTarget(self, action: #selector(self.seeMoreBtnTapped(sender:)), for: .touchUpInside)
                 return cell
                }
            } else if indexPath.row == 3 {
                if let cell: IhahainTableViewCell = tableView.dequeueReusableCell(withIdentifier: "IhahainCell") as? IhahainTableViewCell {
                    cell.tableView.tag = 3
                    cell.tableView.dataSource = self
                    cell.tableView.delegate = self
                    cell.tableView.reloadData()
                    cell.tableView.tableFooterView = UIView()
                    cell.seeMoreBtn.tag = 4
                    cell.seeMoreBtn.addTarget(self, action: #selector(self.seeMoreBtnTapped(sender:)), for: .touchUpInside)
                 return cell
                }
            } else if indexPath.row == 4 {
                if let cell: ServedHotTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ServehotCell") as? ServedHotTableViewCell {
                    cell.tableView.tag = 4
                    cell.tableView.dataSource = self
                    cell.tableView.delegate = self
                    cell.tableView.reloadData()
                    cell.tableView.tableFooterView = UIView()
                    cell.seeMoreBtn.tag = 5
                    cell.seeMoreBtn.addTarget(self, action: #selector(self.seeMoreBtnTapped(sender:)), for: .touchUpInside)
                 return cell
                }
            }
        } else if tableView.tag == 2 {
            let tableViewNib = UINib(nibName: "HomeTableViewCell", bundle: nil)
            tableView.register(tableViewNib, forCellReuseIdentifier: "HomeTableViewCell")
            if let cell: HomeTableViewCell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell") as? HomeTableViewCell {
                cell.dishImage.image = images[indexPath.row]
                cell.dishNameLbl.text = "Pork Adobo"
                cell.distanceLbl.text = "1.2KM"
                cell.deliveryLbl.text = "Delivery Fee: 50.00 Php"
                cell.mealTypeLbl.text = "Filipino,Rice Meal, Quick eats"
                cell.minOrderLbl.text = "10 pieces"
                cell.priceLbl.text = "PHP 120.00"
                cell.ratingBtn.addTarget(self, action:#selector(self.ratingBtnTapped) , for: .touchUpInside)
                cell.ratingLbl.text = "4.0"
                cell.restNameLbl.text = "by Mang Canteen"
                return cell
            }
        } else if tableView.tag == 3 {
            let tableViewNib = UINib(nibName: "HomeTableViewCell", bundle: nil)
            tableView.register(tableViewNib, forCellReuseIdentifier: "HomeTableViewCell")
            if let cell: HomeTableViewCell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell") as? HomeTableViewCell {
                cell.dishImage.image = images[indexPath.row]
                               cell.dishNameLbl.text = "Pork Adobo"
                               cell.distanceLbl.text = "1.2KM"
                               cell.deliveryLbl.text = "Delivery Fee: 50.00 Php"
                               cell.mealTypeLbl.text = "Filipino,Rice Meal, Quick eats"
                               cell.minOrderLbl.text = "10 pieces"
                               cell.priceLbl.text = "PHP 120.00"
                               cell.ratingBtn.addTarget(self, action:#selector(self.ratingBtnTapped) , for: .touchUpInside)
                               cell.ratingLbl.text = "4.0"
                               cell.restNameLbl.text = "by Mang Canteen"
                return cell
            }
        } else if tableView.tag == 4 {
            let tableViewNib = UINib(nibName: "ServedNearYouTableViewCell", bundle: nil)
            tableView.register(tableViewNib, forCellReuseIdentifier: "cell")
            if let cell: ServedNearYouTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as? ServedNearYouTableViewCell {
                cell.dishImage.image = images[indexPath.row]
                cell.deliveryTypeLbl.text = "PickUp Only"
                cell.dishName.text = "Crispy Pata"
                cell.distanceLbl.text = "0.9 KM"
                cell.estimateTimeLbl.text = "60 mins"
                cell.mealTypeLbl.text = "Filipino,Rice Meal, Quick eats"
                cell.priceLbl.text = "PHP 210.00"
                cell.ratingBtn.addTarget(self, action:#selector(self.ratingBtnTapped) , for: .touchUpInside)
                cell.ratingLbl.text = "3.0"
                cell.restName.text = "Victoria Bites"
            
                return cell
            }
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView.tag == 11 {
            switch indexPath.row {
            case 0:
                return 335
            case 1:
                return 170
            case 2:
                return 310
            case 3:
                return 300
            default:
                return 300
            }
        } else if tableView.tag == 2 && tableView.tag == 3 {
             return 177
        } else if tableView.tag == 4 {
            return 203
        }
       return 0
    }
}
