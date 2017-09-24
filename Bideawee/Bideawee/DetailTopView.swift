//
//  DetailTopView.swift
//  Bideawee
//
//  Created by Felicity Johnson on 9/24/17.
//  Copyright © 2017 FJ. All rights reserved.
//

import Foundation
import UIKit

private struct Layout {
    static let imageViewWidthHeight: CGFloat = 160
    static let starImageViewWidthHeight: CGFloat = 70
}

class DetailTopView: UIView {
    
    //MARK: - Private properties
    private let animalImageView = UIImageView()
    private let starImageViewButton = UIButton()
    private var starImage: UIImage?
    private var isStarred = false // TODO base this off of CD property
    
    //MARK: - Public properties
    var starButtonHandler: (()->())?
    
    private func setUpView() {
        animalImageView.image = UIImage(named: "catPic")
        addSubview(animalImageView)
        animalImageView.translatesAutoresizingMaskIntoConstraints = false
        animalImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        animalImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 80).isActive = true
        animalImageView.widthAnchor.constraint(equalToConstant: Layout.imageViewWidthHeight).isActive = true
        animalImageView.heightAnchor.constraint(equalToConstant: Layout.imageViewWidthHeight).isActive = true
        animalImageView.layer.cornerRadius = Layout.imageViewWidthHeight/2.0
        animalImageView.clipsToBounds = true
        
        starImage = isStarred ? UIImage(named: "fullStar") : UIImage(named: "openStar")
        starImageViewButton.setImage(starImage, for: .normal)
        starImageViewButton.addTarget(self, action: #selector(unfavoriteAnimal), for: .touchUpInside)
        
        addSubview(starImageViewButton)
        starImageViewButton.translatesAutoresizingMaskIntoConstraints = false
        starImageViewButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        starImageViewButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 80).isActive = true
        starImageViewButton.widthAnchor.constraint(equalToConstant: Layout.starImageViewWidthHeight).isActive = true
        starImageViewButton.heightAnchor.constraint(equalToConstant: Layout.starImageViewWidthHeight).isActive = true
    }
    
    func unf
}
