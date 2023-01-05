//
//  DetailsViewController.swift
//  ColorsApp
//
//  Created by Mahmut Senbek on 5.01.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    var choosenColor : UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = choosenColor ?? .white
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
