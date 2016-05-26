//
//  Questions+CoreDataProperties.swift
//  tvOSStarter
//
//  Created by Miles Johnson on 2/2/16.
//  Copyright © 2016 ALV Software. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Questions {

    @NSManaged var questionText: String?
    @NSManaged var dateAdded: NSDate?
    @NSManaged var dateUpdated: NSDate?
    @NSManaged var questionAnswer: NSNumber?
    @NSManaged var questionUserAns: NSNumber?
    @NSManaged var questionChoice0: String?
    @NSManaged var questionChoice1: String?
    @NSManaged var questionChoice2: String?
    @NSManaged var questionChoice3: String?
    @NSManaged var questionNumber: NSNumber?

}
