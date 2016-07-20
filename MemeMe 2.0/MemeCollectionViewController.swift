//
//  MemeCollectionViewController.swift
//  MemeMe 2.0
//
//  Created by Phillip Crawford on 5/9/16.
//  Copyright © 2016 Phillip Crawford. All rights reserved.
//

import UIKit

class MemeCollectionViewController: UICollectionViewController {
    

    @IBOutlet var imageCollectionView: UICollectionView!
    var memes: [Meme] {
        return (UIApplication.sharedApplication().delegate as! AppDelegate).memes
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("MemeCollectionViewCell", forIndexPath: indexPath) as! MemeCollectionViewCell
        let meme = memes[indexPath.item]
        let imageView = UIImageView(image: meme.memedImage)
        cell.backgroundView = imageView
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let object: AnyObject = self.storyboard!.instantiateViewControllerWithIdentifier("MemeDetailViewController")
        let detailVC = object as! MemeDetailViewController
        detailVC.meme = self.memes[indexPath.item]
        navigationController!.pushViewController(detailVC, animated: true)
    }
}

