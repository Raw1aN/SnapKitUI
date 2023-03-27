//
//  ExclusiveDropsCell.swift
//  Snapkit
//
//  Created by Алексей Щукин on 27.03.2023.
//

import Foundation
import UIKit

class ExclusiveDropsCell: UICollectionViewCell{
    
    
    func configure(with info: Drop){
        dropView.configure(with: info)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let dropView: ExclusiveDropsContentView = {
       let dropView = ExclusiveDropsContentView()
       return dropView
    }()
    
}

extension ExclusiveDropsCell{
    
    private func initialize(){
        contentView.addSubview(dropView)
        dropView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
}
