//
//  ExclusiveDropsContentView.swift
//  Snapkit
//
//  Created by Алексей Щукин on 27.03.2023.
//

import Foundation
import UIKit

class ExclusiveDropsContentView: UIView{
    
    func configure(with info: Drop){
        nameLabel.text = info.name
        priceLabel.text = info.price
        dropImage.image = info.image
    }
    
    init(){
        super.init(frame: .zero)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let dropImage: UIImageView = {
       let dropImage = UIImageView()
       return dropImage
    }()
    
    private let nameLabel: UILabel = {
       let label = UILabel()
       return label
    }()
    
    private let priceLabel: UILabel = {
       let label = UILabel()
       return label
    }()
    
}

extension ExclusiveDropsContentView{
    
    func initialize(){
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.addArrangedSubview(dropImage)
        stack.addArrangedSubview(nameLabel)
        stack.addArrangedSubview(priceLabel)
        priceLabel.textColor = UIColor(named: "dropsText")
        stack.setCustomSpacing(10, after: dropImage)
        nameLabel.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        priceLabel.font = UIFont.systemFont(ofSize: 11, weight: .bold)
        addSubview(stack)
        stack.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(0)
        }
    }
    
}
