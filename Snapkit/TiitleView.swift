//
//  TiitleView.swift
//  Snapkit
//
//  Created by Алексей Щукин on 27.03.2023.
//

import Foundation
import UIKit

class TittleView: UIView{
    
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
    
    
}

extension TittleView{
    
    private func initialize(){
        addSubview(tittleLabel)
        tittleLabel.text = "Explore"
        tittleLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        tittleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.topMargin.equalToSuperview().inset(20)
        }
    }
    
}
