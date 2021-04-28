//
//  PokemonCell.swift
//  Pokedex-App
//
//  Created by Piotr Kasperek on 27/04/2021.
//

import UIKit

class PokemonCell: UICollectionViewCell {
    
    let imageView: UIImageView =  {
        
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.backgroundColor = .systemGroupedBackground
        return iv
        
    }()
    
    
    lazy var nameContainerView: UIView = {
       let view = UIView()
        view.backgroundColor = .mainRed()
        view.addSubview(namePokemonLabel)
        namePokemonLabel.centerLabel(inView: view)
        return view
    }()
    
    let namePokemonLabel: UILabel =  {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Pikachu"
        return label
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        changeViewComponents()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func changeViewComponents() {
        self.layer.cornerRadius = 12
        self.clipsToBounds = true
        
        addSubview(imageView)
        imageView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: self.frame.height - 32)
        
        addSubview(nameContainerView)
        nameContainerView.anchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 32)
    }
}
