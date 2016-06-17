//
//  ViewController.swift
//  CameraCollector
//
//  Created by Jeffrey Blagdon on 6/10/16.
//  Copyright © 2016 Minibar. All rights reserved.
//

import UIKit

class AddPhotoCell: UICollectionViewCell {
    
}

class ImageCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
}

class CollectionViewController: UICollectionViewController {

    var photos: [UIImage] = []

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count + 1
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        if indexPath.item == 0 {
            let addPhotoCell = collectionView.dequeueReusableCellWithReuseIdentifier("AddPhotoCell", forIndexPath: indexPath)
            return addPhotoCell
        } else {
            if let imageCell = collectionView.dequeueReusableCellWithReuseIdentifier("ImageCell", forIndexPath: indexPath) as? ImageCell {
                return imageCell
            } else {
                return UICollectionViewCell()
            }
        }
    }
}

