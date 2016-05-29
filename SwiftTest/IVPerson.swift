//
//  IVPerson.swift
//  SwiftTest
//
//  Created by Igor Vedeneev on 29.05.16.
//  Copyright © 2016 Igor Vedeneev. All rights reserved.
//

import UIKit

class IVPerson: NSObject {
    var firstName : NSString?
    var lastName : NSString?
    var age: NSInteger
    var info: NSString?
    var avatarLink: NSString?
    var avatarUrl: NSURL {
        get { return NSURL(string: self.avatarLink! as String)! }
    }
    
    init(firstName: NSString, lastName: NSString, age: NSInteger, info: NSString, avararLink: NSString) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.info = info
        self.avatarLink = avararLink
    }
    
    override var description: String {
        return NSString(format: "name: \(self.firstName)\n surname: \(self.lastName)\n age: \(self.age)\n \(self.info)\n avatar:\(self.avatarLink) ") as String
    }
}
