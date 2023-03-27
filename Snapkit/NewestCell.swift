//
//  NewestCell.swift
//  Snapkit
//
//  Created by Алексей Щукин on 28.03.2023.
//

import Foundation
import UIKit

class NewestCell: UICollectionViewCell{
    
    func configure(with info: Newest){
        newestView.configure(with: info)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let newestView: NewestView = {
       let newestView = NewestView()
       return newestView
    }()
    
}

extension NewestCell{
    
    func initialize(){
        contentView.addSubview(newestView)
        newestView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(0)
        }
    }
    
}
