//
//  PopVC.swift
//  pic-city
//
//  Created by André Rosa on 07/05/2018.
//  Copyright © 2018 Andre Rosa. All rights reserved.
//

import UIKit

class PopVC: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var popImageView: UIImageView!
    
    // MARK: Variables
    var passedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()
    }
    
    func initData(forImage image: UIImage) {
        self.passedImage = image
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
}

extension PopVC: UIGestureRecognizerDelegate {
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
}
