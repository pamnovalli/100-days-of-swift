//
//  Album.swift
//  chalenge-photos-album
//
//  Created by Pamela Ianovalli on 26/04/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class Album: NSObject, Codable{
    var caption: String
    var fileName: String
    
    init(caption: String, fileName: String) {
        self.caption = caption
        self.fileName = fileName
    }
}
