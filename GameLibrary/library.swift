//
//  library.swift
//  GameLibrary
//
//  Created by Bersabeh Asefa on 2/18/18.
//  Copyright © 2018 Bersabeh Asefa. All rights reserved.
//

import Foundation

class Game {
    
    var gameName: String
    var checkedOutDate: Date?
    var checkInDate: Date
    
    init(gameName : String, checkInDate: Date) {
        self.gameName = gameName
        self.checkInDate = checkInDate
    }

}



