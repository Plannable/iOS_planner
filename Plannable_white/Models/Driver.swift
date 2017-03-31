//
//  Driver.swift
//  Plannable
//
//  Created by shane davis on 18/02/2017.
//  Copyright © 2017 shane davis. All rights reserved.
//
import Foundation
import RealmSwift

class Driver: Object{
    dynamic var id = 0
    dynamic var name = ""
    dynamic var status = 0
    dynamic var createdAt = NSDate()
    var loads = List<Load>()
}
