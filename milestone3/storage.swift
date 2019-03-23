//
//  storage.swift
//  milestone3
//
//  Created by Diwakar Sharma on 23/3/19.
//  Copyright © 2019 Diwakar Sharma. All rights reserved.
//

import Foundation

class Storage{
    static let shared:Storage = Storage()
    var objects:[Item]
    private init(){
        objects = [Item]()
    }
}
