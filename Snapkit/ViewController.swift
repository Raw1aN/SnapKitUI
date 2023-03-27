//
//  ViewController.swift
//  Snapkit
//
//  Created by Алексей Щукин on 26.03.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Background")
        
        let allCategoryView = AllCategoryView()
        allCategoryView.configure(with: [Category(image: UIImage(named: "unsplash_kcFE6H7VH2E")!, name: "Bored"),Category(image: UIImage(named: "unsplash_ldg40aCeOXo")!, name: "GusGus"),Category(image: UIImage(named: "unsplash_U8OMygI7wSk")!, name: "FOX CLUB"),Category(image: UIImage(named: "unsplash_kcFE6H7VH2E")!, name: "Timmy"),Category(image: UIImage(named: "unsplash_ldg40aCeOXo")!, name: "GusGus")])
        
        
        let tittleView = TittleView()
        view.addSubview(tittleView)
        tittleView.snp.makeConstraints { make in
            make.height.equalTo(65)
            make.leading.trailing.equalToSuperview()
            make.topMargin.equalToSuperview().inset(16)
        }
        
        let searchView = SearchView()
        view.addSubview(searchView)
        searchView.snp.makeConstraints { make in
            make.top.equalTo(tittleView.snp.bottom)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(46)
        }
        
        
        view.addSubview(allCategoryView)
        allCategoryView.snp.makeConstraints { make in
            make.top.equalTo(searchView.snp.bottom).offset(20)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(125)
        }
        
        let exclusivedropsTittleView = CollectionViewTittle()
        view.addSubview(exclusivedropsTittleView)
        exclusivedropsTittleView.snp.makeConstraints { make in
            make.top.equalTo(allCategoryView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(52)
        }
        exclusivedropsTittleView.confugire(with: "Exclusive drops 💥")
        
        let dropView = AllDropsView()
        view.addSubview(dropView)
        dropView.snp.makeConstraints { make in
            make.top.equalTo(exclusivedropsTittleView.snp.bottom)
            make.height.equalTo(142)
            make.leading.trailing.equalToSuperview()
        }
        
        dropView.configure(with: [Drop(image: UIImage(named: "image (circle)")!, name: "onChain", price: "639 763 US$"),Drop(image: UIImage(named: "boneImage")!, name: "20Styx", price: "374 937 US$"),Drop(image: UIImage(named: "redheadImage")!, name: "Inroom", price: "82 726 US$"),Drop(image: UIImage(named: "image (circle)")!, name: "onChain", price: "639 763 US$"),Drop(image: UIImage(named: "boneImage")!, name: "20Styx", price: "374 937 US$")])
        
        let newestTittleView = CollectionViewTittle()
        view.addSubview(newestTittleView)
        newestTittleView.snp.makeConstraints { make in
            make.top.equalTo(dropView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(52)
        }
        newestTittleView.confugire(with: "Newest ⚡️")
        
        let newest = AllNewest()
        view.addSubview(newest)
        newest.snp.makeConstraints { make in
            make.top.equalTo(newestTittleView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(210)
        }
        newest.configure(with: [Newest(tittle: "A #8275", subtittle: "Top bid 1.55 wETH", picture: UIImage(named: "unsplash_8FwP6HHTHWI")!),Newest(tittle: "Silver buddha", subtittle: "Top bid 1.55 wETH", picture: UIImage(named: "unsplash_fAaL7XBkqgQ")!),Newest(tittle: "David #0x00", subtittle: "Top bid 0.155 wETH", picture: UIImage(named: "unsplash_hbFKxsIqclc")!),Newest(tittle: "A #8275", subtittle: "Top bid 1.55 wETH", picture: UIImage(named: "unsplash_8FwP6HHTHWI")!)])
        
    }


}

