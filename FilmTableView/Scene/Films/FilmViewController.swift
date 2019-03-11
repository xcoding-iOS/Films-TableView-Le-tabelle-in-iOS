//
//  FilmViewController.swift
//  FilmTableView
//
//  Created by Giuseppe Sapienza on 19/02/19.
//  Copyright © 2019 Giuseppe Sapienza. All rights reserved.
//

import UIKit

class FilmViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    
    var films: [Film] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.films = [
            Film.init(title: "I Guardiani della Galassia",
                      description: "Prodotto dai Marvel Studios e distribuito da Walt Disney Studios Motion Pictures è il decimo film del Marvel Cinematic Universe e quarta pellicola della cosiddetta Fase Due.",
                      image: #imageLiteral(resourceName: "guardiani della galassia")),
            Film.init(title: "Il Signore degli Anelli, il ritorno del Re",
                      description: "Tratto dall'omonima terza e ultima parte del romanzo di J. R. R. Tolkien Il Signore degli Anelli. Il film, preceduto da Il Signore degli Anelli - La Compagnia dell'Anello del 2001 e Il Signore degli Anelli - Le due torri del 2002, conclude la trilogia cinematografica del Signore degli Anelli.",
                      image: #imageLiteral(resourceName: "the lord of the rings")),
            Film.init(title: "Star Wars ep. 8: Gli ultimi Jedi",
                      description: "Prodotto dalla Lucasfilm e distribuito dalla Walt Disney Studios Motion Pictures, è l'ottava pellicola della saga di Guerre stellari e il secondo della cosiddetta Trilogia sequel dopo Star Wars: Il risveglio della Forza",
                      image: #imageLiteral(resourceName: "star wars"))
        ]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("🤖", #function)
        return self.films.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let film = self.films[indexPath.row]
        print("🤖", #function, film.title)
        
        let cell: FilmTableViewCell = tableView.dequeueReusableCell(withIdentifier: "filmCell", for: indexPath) as! FilmTableViewCell
        
        cell.filmTitleLabel.text = film.title
        cell.filmImageView.image = film.image
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let filmSelected = self.films[indexPath.row]
        print("🤖", #function, filmSelected.title)
        self.performSegue(withIdentifier: "segueToDetail", sender: filmSelected)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is DetailViewController {
            let vc = segue.destination as! DetailViewController
            vc.receivedFilm = sender as? Film
        }
    }

}

