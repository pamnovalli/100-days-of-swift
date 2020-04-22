//
//  Petition.swift
//  project-seven
//
//  Created by Pamela Ianovalli on 09/04/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
