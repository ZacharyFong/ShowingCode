//
//  ViewController.swift
//  ShowingCode
//
//  Created by Zachary on 18/11/2018.
//  Copyright © 2018 Chin Weng Fong. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {
    
    let products = ["iPhone", "iPad", "iPod", "Mac"]

    fileprivate func setupNavigaionView() {
        navigationItem.title = "Products"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Refresh", style: .plain, target: self, action: #selector(handleRefresh))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sign out", style: .plain, target: self, action: #selector(handleSignout))
    }
    
    let cellId = "cellid"
    let headerId = "headerid"
    
    fileprivate func setUpCollectionView() {
       collectionView?.backgroundColor = .white
       collectionView?.register(ProductCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(Productheader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigaionView()
        setUpCollectionView()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        return cell
    }
    
    
    
    @objc func handleRefresh() {
      collectionView?.reloadData()
        print("successful refresh")
    }
    
    @objc func handleSignout() {
        
    }
    
    class Productheader: UICollectionViewCell {
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            backgroundColor = .blue
        }
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
    
    class ProductCell: UICollectionViewCell {
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            backgroundColor = .red
            }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }


}

