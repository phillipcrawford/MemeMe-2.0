//
//  MemeDetailViewController.swift
//  MemeMe 2.0
//
//  Created by Phillip Crawford on 5/9/16.
//  Copyright © 2016 Phillip Crawford. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    
    @IBOutlet var memeImageView: UIImageView!
    @IBOutlet var memeLabel: UILabel!
    var meme: Meme!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        memeImageView.image = meme.memedImage
        tabBarController?.tabBar.hidden = true
        navigationController?.setToolbarHidden(true, animated: true)
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarController?.tabBar.hidden = false
        navigationController?.setToolbarHidden(false, animated: false)
    }
    
    
}
