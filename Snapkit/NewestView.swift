//
//  NewestView.swift
//  Snapkit
//
//  Created by Алексей Щукин on 27.03.2023.
//

import Foundation
import UIKit

class NewestView: UIView{
    
    func configure(with info: Newest){
        picture.image = info.picture
        tittle.text = info.tittle
        subtittle.text = info.subtittle
    }
    
    init(){
        super.init(frame: .zero)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let picture: UIImageView = {
        let picture = UIImageView()
        return picture
    }()
    
    private let tittle: UILabel = {
        let tittle = UILabel()
        return tittle
    }()
    
    private let subtittle: UILabel = {
        let subtittle = UILabel()
        return subtittle
    }()
    
}

extension NewestView{
    
    func initialize(){
        
        tittle.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        subtittle.font = UIFont.systemFont(ofSize: 10, weight: .bold)
        subtittle.textColor = UIColor(named: "seeAll")
        let stack = UIStackView()
        let stackText = UIStackView()
        stackText.axis = .vertical
        stackText.alignment = .leading
        
        stackText.addArrangedSubview(tittle)
        stackText.addArrangedSubview(subtittle)
        stackText.spacing = 10
        stackText.setCustomSpacing(0, after: tittle)
        picture.snp.makeConstraints { make in
            make.height.equalTo(136)
        }
        stack.addArrangedSubview(picture)
        stack.addArrangedSubview(stackText)
        stack.alignment = .center
        stack.axis = .vertical
        stack.spacing = 10
        addSubview(stack)
        stackText.snp.makeConstraints { make in
            make.leading.equalTo(10)
        }
        stack.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
        }
        backgroundColor = UIColor(named: "SecondBackground")
        self.layer.cornerRadius = 15
    }
    
}
