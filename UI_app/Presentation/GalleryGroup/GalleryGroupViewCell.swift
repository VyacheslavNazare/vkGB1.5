//
//  GalleryGroupViewCell.swift
//  UI_app
//
//  Created by Вячеслав on 23.08.2021.
//

import UIKit

final class GalleryGroupViewCell: UICollectionViewCell {
    
    static let identifier: String = "GalleryGroupViewCell"

    @IBOutlet var ImageGalleryGroup: UIImageView!
    
    func configure(_ galleryGroup: GalleryGroupModel) {
        
        ImageGalleryGroup.image = UIImage(named: galleryGroup.imageGalleryGroup)
        
    }
    
}
