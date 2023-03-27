//
//  SearchView.swift
//  Snapkit
//
//  Created by Алексей Щукин on 27.03.2023.
//

import Foundation
import UIKit

class SearchView: UIView{
    
    init(){
        super.init(frame: .zero)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let searchImage: UIImageView = {
        let searchImage = UIImageView(image: UIImage(systemName: "magnifyingglass",withConfiguration: UIImage.SymbolConfiguration(weight: .regular))?.withTintColor(UIColor(named: "SecondText")!,renderingMode: .alwaysOriginal))
        return searchImage
    }()
    
    private let textField: UITextField = {
       let textField = UITextField()
       return textField
    }()
    
}

extension SearchView{
    
    private func initialize(){
        backgroundColor = UIColor(named: "SecondBackground")
        layer.cornerRadius = 15
        let stack = UIStackView()
        stack.addArrangedSubview(searchImage)
        stack.axis = .horizontal
        addSubview(stack)
        stack.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.centerY.equalToSuperview()
        }
        stack.addArrangedSubview(textField)
        stack.alignment = .center
        textField.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(300)
            //make.left.equalTo(searchImage.snp.right).offset(10)
        }
        stack.spacing = 10
        textField.backgroundColor = UIColor(named: "SecondBackground")
        textField.placeholder = "Collection, item or user"
        textField.textColor = UIColor(named: "SecondText")
        
    }
    
}
