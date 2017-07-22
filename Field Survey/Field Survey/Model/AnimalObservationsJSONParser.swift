//
//  AnimalObservationsJSONParser.swift
//  Field Survey
//
//  Created by Lappy on 7/21/17.
//  Copyright © 2017 xanda code. All rights reserved.
//

import Foundation

class AnimalObservationsJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [Observations] {
        var observations = [Observations]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm:"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            
                if let observations = root["observations"] as? [Any] {
                    for observation in observations {
                        if let observation = observation as? [String: String] {
                            if let classificationName = observation["classification"],
                               let title = observation["title"],
                               let description = observation["description"],
                               let dateString = observation["date"],
                               let date = dateFormatter.date(from: dateString) {
                            
                                if let observations = Observations(classificationName: classificationName, title: title, description: description, date: date) {
                                    observations.append(observations)
                                }
                               }
                            }
                        }
                    }
            }
        
        return observations
    }
}
