//
//  ObservationEventsDetailViewController.swift
//  Field Survey
//
//  Created by Lappy on 7/21/17.
//  Copyright © 2017 xanda code. All rights reserved.
//

import UIKit

class ObservationEventsDetailViewController: UIViewController {
    
    var observation: Observation?
    
    var dateFormatter = DateFormatter()
    
    

    @IBOutlet weak var observationImageView: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.text = Observation?.matchup
        
        observationImageView.image = observation.observation.image
        titleLable.text = observation?.title
        descriptionLabel.text = observation?.description
        
        if let date = Observation?.date {
            dateLabel.text = dateFormatter.string(from: date)        } else {
            dateLabel.text = ""
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
