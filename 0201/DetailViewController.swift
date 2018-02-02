//
//  DetailViewController.swift
//  0201
//
//  Created by CAUADC on 2018. 2. 1..
//  Copyright © 2018년 cauadc. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    
    
    @IBOutlet weak var priceLable: UILabel!
    @IBOutlet weak var starLable: UILabel!
    @IBOutlet weak var studioImage: UIImageView!
    @IBOutlet weak var hashTagLabel: UILabel!
    var stud:Studio?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let myStudio = stud {
            studioImage.image = myStudio.coverImage
            
            hashTagLabel.text = myStudio.hashtag
            
            if myStudio.star <= 1.4 {
                starLable.text = "★☆☆☆☆"
            } else if myStudio.star <= 2.4 {
                starLable.text = "★★☆☆☆"
            } else if myStudio.star <= 3.4 {
                starLable.text = "★★★☆☆"
            } else if myStudio.star <= 4.4 {
                starLable.text = "★★★★☆"
            } else if myStudio.star > 4.4{
                starLable.text = "★★★★★"
            } else if myStudio.star == 0 {
                starLable.text = "☆☆☆☆☆"
            }
            
            priceLable.text =
                myStudio.price
                
            self.navigationItem.title = myStudio.studioName
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
