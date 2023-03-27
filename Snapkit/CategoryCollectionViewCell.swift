//
//  CategoryCollectionViewCell.swift
//  Snapkit
//
//  Created by Алексей Щукин on 26.03.2023.
//

import UIKit
import SnapKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    func configure(with info: Category){
        categoryView.configure(with: info)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let categoryView: CategoryView = {
        let view = CategoryView()
        return view
    }()
}

extension CategoryCollectionViewCell{
    private func initialize(){
        contentView.addSubview(categoryView)
        categoryView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
    }
}
