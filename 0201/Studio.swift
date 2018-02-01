//
//  Studio.swift
//  0201
//
//  Created by cauadc on 2018. 2. 1..
//  Copyright © 2018년 cauadc. All rights reserved.
//

import Foundation
import UIKit

class Studio {
    var studioName:String
    var price:String
    var coverImage:UIImage
    var star:Double
    var outsidePhoto:Bool
    var insidePhoto:Bool
    var hashtag:String
    
    
    init(studioName:String, price:String, coverImage:UIImage, star:Double, outsidePhoto:Bool, insidePhoto:Bool,hashtag:String) {
        self.studioName = studioName
        self.price = price
        self.coverImage = coverImage
        self.star = star
        self.outsidePhoto = outsidePhoto
        self.insidePhoto = insidePhoto
        self.hashtag = hashtag
    }
}
