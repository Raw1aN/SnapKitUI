//
//  CategoryView.swift
//  Snapkit
//
//  Created by Алексей Щукин on 26.03.2023.
//

import Foundation
import SnapKit
import UIKit


class CategoryView: UIView{
    
    func configure(with info: Category){
        categoryImage.image = info.image
        categoryNameLabel.text = info.name
    }
    
    init(){
        super.init(frame: .zero)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Properties
    private let categoryImage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    private let categoryNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        return label
    }()
    
}

extension CategoryView{
    private func initialize(){
        let stack = UIStackView()
        stack.axis = .vertical
        stack.addArrangedSubview(categoryImage)
        categoryImage.snp.makeConstraints { make in
            //make.leading.trailing.equalToSuperview().inset(5)
            make.height.equalTo(97)
        }
        stack.addArrangedSubview(categoryNameLabel)
        addSubview(stack)
        stack.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(0)
            stack.alignment = .center
        }
    }
    
}
