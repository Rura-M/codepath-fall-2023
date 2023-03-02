//
//  ViewController.swift
//  week1
//
//  Created by Ruramaimunashe Mutefura on 3/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    let myself = Edna(image: UIImage(named: "edna1")!, story: "Edna Mode is a half-Japanese, half-German fashion designer and auteur. Known for her short stature and habit of calling everyone dahling, she is highly accomplished at her craft and as demanding of others as she is of herself. Above all things, Edna Mode despises supermodels, Spoilt, silly little stick figures, partly because they are too limiting - they show her clothes only on the perfect conditions of the catwalk, and only for one type of person - the supermodel. They certainly don't allow her to showcase her talents or use her imagination to its fullest. Superheroes with their many abilities, shapes and of course the situations they need clothes for, are the only challenge truly worthy of her talents.from fandom")
    let creation = Edna(image: UIImage(named: "edna2")!, story: "Edna was created for The Incredibles by writer and director Brad Bird.[4] Having watched several superhero-themed films and television shows prior to developing The Incredibles, Bird had often found himself wondering who is responsible for making the superheroes' elaborate costumes")
    let movie = Edna(image: UIImage(named: "edna3")!, story: "Edna first appears attending the wedding of Mr. Incredible and Elastigirl, sitting on the frontmost bench of the chapel with Rick Dicker on her left and Gazerbeam on her right.")
    
    var ednas:[Edna]=[]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ednas = [myself, creation,movie]
    }
    
    
    @IBAction func didTapButton(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view{
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.edna = ednas[0]
            } else if tappedView.tag == 1 {
                detailViewController.edna = ednas[1]
            } else if tappedView.tag == 2 {
                detailViewController.edna = ednas[2]
            } else {
                print("no option was tapped, please check your selection.")
            }
        }
    }
    
}

