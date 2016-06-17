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

class CollectionViewController: UICollectionViewController {        // Our type's name is CollectionViewController
    
    var photos: [UIImage] = []      // An array to hold our photos. Var means we can change its contents.
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count + 1     // One special cell to add a new photo, and a cell for each photo
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        if indexPath.item == 0 {
            if let addPhotoCell = collectionView.dequeueReusableCellWithReuseIdentifier("AddPhotoCell", forIndexPath: indexPath) as? AddPhotoCell {     // Is the cell that you have for the "AddPhotoCell" identifer actually an AddPhotoCell?
                return addPhotoCell               // Return it
            } else {
                return UICollectionViewCell()     // Whatever
            }
        } else {
            if let imageCell = collectionView.dequeueReusableCellWithReuseIdentifier("ImageCell", forIndexPath: indexPath) as? ImageCell {      // Is the cell that you have for the "ImageCell" identifier actually an ImageCell?
                return imageCell                // Return it
            } else {
                return UICollectionViewCell()   // Whatever
            }
        }
    }
}

