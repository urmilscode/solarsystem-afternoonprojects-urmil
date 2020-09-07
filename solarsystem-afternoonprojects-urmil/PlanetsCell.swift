//
//  PlanetsCell.swift
//  solarsystem-afternoonprojects-urmil
//
//  Created by Urmil Shah on 9/6/20.
//  Copyright © 2020 Spark28 Apps. All rights reserved.
//

import UIKit

class PlanetsCell: UITableViewCell {

   
    @IBOutlet weak var planetsTitleLabel: UILabel!
    
    
    
    func setPlanets(planet: Planet) {
       
       planetsTitleLabel.text = planet.name
    }
    
    
}
