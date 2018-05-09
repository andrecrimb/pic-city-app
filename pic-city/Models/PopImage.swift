//
//  PopImage.swift
//  pic-city
//
//  Created by André Rosa on 08/05/2018.
//  Copyright © 2018 Andre Rosa. All rights reserved.
//

import Foundation
import UIKit

struct PopImage {
    var uiImage: UIImage?
    let title: String
    let imageUrl: String
    
    init(imageUrl: String, title: String, uiImage: UIImage?) {
        self.imageUrl = imageUrl
        self.title = title
        self.uiImage = nil
    }
    
}
