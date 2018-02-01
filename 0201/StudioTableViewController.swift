//
//  StudioTableViewController.swift
//  0201
//
//  Created by cauadc on 2018. 2. 1..
//  Copyright © 2018년 cauadc. All rights reserved.
//

import UIKit

class StudioTableViewController: UITableViewController {
        
        var studios:[Studio] = []
        
        var studio1 = Studio(studioName: "서면 J스튜디오", price: "30,000원 ~", coverImage: #imageLiteral(resourceName: "photo1"), star: 5.0, outsidePhoto: true, insidePhoto: true, hashtag: "#이미지사진 #프로필사진 #화보같은")
        var studio2 = Studio(studioName: "남포 민's studio", price: "30,000원~", coverImage: #imageLiteral(resourceName: "photo2"), star: 4.5, outsidePhoto: true, insidePhoto: true, hashtag: "#바디프로필 #파격적인 #화보같은")
        var studio3 = Studio(studioName: "kim.s.h.studio", price: "50,000원~", coverImage: #imageLiteral(resourceName: "photo3"), star: 4.5, outsidePhoto: true, insidePhoto: true, hashtag: "#바디프로필 #파격적인")
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            
            
            studios.append(studio1)
            studios.append(studio2)
            studios.append(studio3)
            
            
            // Uncomment the following line to preserve selection between presentations
            // self.clearsSelectionOnViewWillAppear = false
            
            // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
            // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
            return studios.count
        }
        
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
            
            var studio = studios[indexPath.row]
            cell.textLabel?.text = studio.studioName
            cell.detailTextLabel?.text = studio.price
            cell.imageView?.image = studio.coverImage
            
            // Configure the cell...
            
            return cell
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
