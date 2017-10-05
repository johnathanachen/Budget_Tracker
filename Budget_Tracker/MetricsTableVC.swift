//
//  MetricsTableVC.swift
//  Budget_Tracker
//
//  Created by Johnathan Chen on 10/5/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class DateTableCell: UITableViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
}

class AccumulatedTableCell: UITableViewCell {
    
    @IBOutlet weak var accumulatedLabel: UILabel!
}

class PayDayTableCell: UITableViewCell {
    
    @IBOutlet weak var payDayLabel: UILabel!
}

class dailyBudgetTableCell: UITableViewCell {
    
    @IBOutlet weak var dailyBudgetLabel: UILabel!
}

class totalAmountTableCell: UITableViewCell {
    @IBOutlet weak var totalAmountLabel: UILabel!
}



class MetricsTableVC: UITableViewController {
    
    var date = "01/28/2017"
    var amount = "$100"
    var day = "30"
    var daily = "$20"
    var total = "$900"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        self.tableView.rowHeight = 44
//        self.tableView.dataSource = self
//        self.tableView.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "dateCell") as! DateTableCell
            cell.dateLabel.text = date
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "accumulatedCell") as! AccumulatedTableCell
            cell.accumulatedLabel.text = amount
            return cell
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "payDayCell") as! PayDayTableCell
            cell.payDayLabel.text = day
            return cell
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "dailyBudgetCell") as! dailyBudgetTableCell
            cell.dailyBudgetLabel.text = daily
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "totalAmountCell") as! totalAmountTableCell
            cell.totalAmountLabel.text = total
            return cell
        }

    }
    

 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
