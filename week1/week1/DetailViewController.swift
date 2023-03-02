//
//  DetailViewController.swift
//  week1
//
//  Created by Ruramaimunashe Mutefura on 3/2/23.
//

import UIKit

class DetailViewController: UIViewController {

    var edna: Edna?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let edna = edna{
            image.image = edna.image
            text.text = edna.story
        }
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var text: UITextView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
