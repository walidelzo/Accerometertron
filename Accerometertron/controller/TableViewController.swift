//
//  TableViewController.swift

//  Accerometertron
//
//  Created by Admin on 3/8/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self
    }

 override   func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return numbers of rows
        return imageArr.count
 
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "paralleraxCell", for: indexPath) as? ParalleraxCell else {return ParalleraxCell()}
        cell.setupoutlet(forDescription: nameArr[indexPath.row], AndImageName: imageArr[indexPath.row]!)
        return cell
            
    
    }
    

}

