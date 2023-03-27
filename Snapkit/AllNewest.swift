//
//  AllNewest.swift
//  Snapkit
//
//  Created by Алексей Щукин on 27.03.2023.
//

import Foundation
import UIKit

class AllNewest: UIView, UICollectionViewDelegate{
    
    func configure(with info: [Newest]){
        array = info
        collectionView.reloadData()
    }
    
    var array: [Newest] = []
    
    init(){
        super.init(frame: .zero)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var collectionView: UICollectionView!
    
}

extension AllNewest{
    
    func initialize(){
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
        layout.minimumLineSpacing = 10
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(NewestCell.self, forCellWithReuseIdentifier: "newestCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        addSubview(collectionView)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.bottom.equalToSuperview().inset(10)
        }
        collectionView.backgroundColor = UIColor(named: "Background")
    }
    
}

extension AllNewest: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 140, height: 190)
    }
    
}

extension AllNewest: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newestCell", for: indexPath) as! NewestCell
        cell.configure(with: array[indexPath.item])
        return cell
    }
    
}


