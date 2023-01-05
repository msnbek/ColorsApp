//
//  ColorsViewController.swift
//  ColorsApp
//
//  Created by Mahmut Senbek on 5.01.2023.
//

import UIKit

class ColorsViewController: UIViewController {
    
    var colorArray : [UIColor] = []
     
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColor()
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBackground
    }
    
    func addRandomColor() {
        
        
        for _ in 0..<50 {
            colorArray.append(createRandomColor())
            print(colorArray)
        }
        
    }
    
    func createRandomColor() -> UIColor {
        let randomColor =  UIColor(red: CGFloat.random(in: 0...1),
                                   green: CGFloat.random(in: 0...1),
                                   blue: CGFloat.random(in: 0...1),
                                   alpha: 1)
        
        return randomColor
    }
    



}


extension ColorsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {
            return UITableViewCell()
        }
        let color = colorArray[indexPath.row]
        cell.backgroundColor = color
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        let color = colorArray[indexPath.row]
        performSegue(withIdentifier: "toSecondVC", sender: color)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            let destinationVC = segue.destination as! DetailsViewController
        destinationVC.choosenColor = sender as? UIColor
           
        
    }
}
