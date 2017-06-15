//
//  AnswerAction.swift
//  Susi
//
//  Created by Chashmeet Singh on 2017-06-10.
//  Copyright © 2017 FOSSAsia. All rights reserved.
//

import Foundation
import RealmSwift

class AnswerAction: Object {
    dynamic var expression: String = ""

    convenience init(action: [String : AnyObject]) {
        self.init()

        if let expression = action[Client.ChatKeys.Expression] as? String {
            self.expression = expression
        }
    }
}
