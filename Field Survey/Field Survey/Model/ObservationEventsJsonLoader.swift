//
//  ObservationEventsJsonLoader.swift
//  Field Survey
//
//  Created by Lappy on 7/21/17.
//  Copyright © 2017 xanda code. All rights reserved.
//

import Foundation

class ObservationEventsJsonLoader {
    
    class func load(fileName: String) -> [Observations] {
        var events = [Observations]()
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
        let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
          events = AnimalObservationsJSONParser.parse(data)
        }
    }
}
