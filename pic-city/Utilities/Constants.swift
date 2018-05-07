//
//  Constants.swift
//  pic-city
//
//  Created by André Rosa on 03/05/2018.
//  Copyright © 2018 Andre Rosa. All rights reserved.
//

import Foundation

typealias StatusCompletionHandler = (_ status: Bool) -> ()

struct Constants {
    struct Identifiers {
        static let DroppablePin = "droppablePin"
        static let PhotoCell = "photoCell"
    }
    
    struct Keys {
        static let FlickrApi = "ca6ccd1574d75f34aef482e1a56040cd"
    }
    
    static func flickrUrl(withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
        return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(Keys.FlickrApi)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    }
    
}
