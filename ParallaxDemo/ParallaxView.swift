//
//  ParallaxView.swift
//  ParallaxDemo
//
//  Created by Алексей Пархоменко on 29/04/2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import UIKit

class ParallaxView: UIView {
    
    let imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.backgroundColor = .black
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.borderWidth = 0.5
        layer.backgroundColor = UIColor.black.cgColor
        layer.masksToBounds = true
        backgroundColor = .white
        
        addSubview(imageView)
        
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
