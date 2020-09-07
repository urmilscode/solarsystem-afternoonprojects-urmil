//
//  PlanetsViewController.swift
//  solarsystem-afternoonprojects-urmil
//
//  Created by Urmil Shah on 9/6/20.
//  Copyright © 2020 Spark28 Apps. All rights reserved.
//

import UIKit

class PlanetsViewController: UITableViewController {

    //Source of truth
    
    var planets: [Planet] = [];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       planets = createArray()
    }
    
    
    
    func createArray() -> [Planet] {
        
        var tempPlanets:[Planet] = [];
        
        let mercury = Planet(name: "Mercury", diameter:4880,dayLength:87.969, maxMillionKMsFromSun: 43.0)
        
        let venus = Planet(name: "Venus", diameter:12104 , dayLength:2802 , maxMillionKMsFromSun:108.2)
        
        let earth = Planet(name: "Earth",  diameter:12756 , dayLength:24 , maxMillionKMsFromSun:149.6)
        
        let mars = Planet(name: "Mars",  diameter:6792 , dayLength: 24.7, maxMillionKMsFromSun:227.9)
        
        let jupiter = Planet(name: "Jupiter",  diameter:142984,dayLength:9.9, maxMillionKMsFromSun:778.6)
        
        let saturn = Planet(name: "Saturn",  diameter:120536, dayLength:10.7, maxMillionKMsFromSun:1433.5)
            
        let uranus = Planet(name: "Uranus",  diameter:51118, dayLength:17.2, maxMillionKMsFromSun:2872.5)
           
        
        let neptune = Planet(name: "Neptune",  diameter:49528, dayLength:16.1, maxMillionKMsFromSun:4495.1)
        

        
        let pluto = Planet(name: "Pluto",  diameter:2370 , dayLength:153.3, maxMillionKMsFromSun:5906.4)
        
        
        tempPlanets.append(mercury)
        tempPlanets.append(venus)
        tempPlanets.append(earth)
        tempPlanets.append(mars)
        tempPlanets.append(jupiter)
        tempPlanets.append(saturn)
        tempPlanets.append(uranus)
        tempPlanets.append(neptune)
        tempPlanets.append(pluto)
        
        return tempPlanets
    }
    
    
    

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return planets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let planet = planets[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetsCell") as! PlanetsCell
         
        cell.setPlanets(planet: planet)
        
        return cell
    }
  

  
}
