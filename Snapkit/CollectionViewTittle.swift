//
//  ExclusiveDropsTittleView.swift
//  Snapkit
//
//  Created by Алексей Щукин on 27.03.2023.
//

import Foundation
import UIKit

class CollectionViewTittle: UIView{
    
    func confugire(with info: String){
        tittleLabel.text = info
    }
    
    init(){
        super.init(frame: .zero)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let tittleLabel: UILabel = {
       let label = UILabel()
       return label
    }()
    
    private let seeAll: UILabel = {
       let label = UILabel()
       return label
    }()
    
}

extension CollectionViewTittle{
    
    private func initialize(){
        addSubview(tittleLabel)
        addSubview(seeAll)
        tittleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
        }
        seeAll.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
        }
        tittleLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        seeAll.text = "See all"
        seeAll.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        seeAll.textColor = UIColor(named: "seeAll")
    }
    
    
}
