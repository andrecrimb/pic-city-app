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
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var blurV: UIView!
    @IBOutlet weak var infoHelper: UIView!
    
    // MARK: Variables
    var passedImage: UIImage!
    var passedLabel: String!
    
    var contentIsHidden: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popImageView.image = passedImage
        titleLabel.text = passedLabel
        
        if titleLabel.text == ""{
            blurV.isHidden = true
        }
        
        addDoubleTap()
        addSingleTap()

        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 6.0
    }
    
   
    func initData(forImage image: PopImage) {
        self.passedImage = image.uiImage
        self.passedLabel = image.title
    }
    
    @objc func screenWasSingleTapped() {
        contentIsHidden = !contentIsHidden
        
        infoHelper.isHidden = contentIsHidden
        if titleLabel.text != ""{
            blurV.isHidden = contentIsHidden
        }
    }
    
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
}

extension PopVC: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.popImageView
    }
}

extension PopVC: UIGestureRecognizerDelegate {
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    func addSingleTap() {
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasSingleTapped))
        singleTap.numberOfTapsRequired = 1
        singleTap.delegate = self
        view.addGestureRecognizer(singleTap)
    }
}
