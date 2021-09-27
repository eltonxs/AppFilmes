//
//  DetalhesFilmeViewController.swift
//  AppFilmes
//
//  Created by Elton Souza on 26/09/21.
//

import Foundation
import UIKit
class DetalhesFilmeViewController: UIViewController{
    
    @IBOutlet weak var filmeImageView: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    var filme: Filme!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeImageView.image = filme.image
        tituloLabel.text = filme.titulo
        descricaoLabel.text = filme.descricao
        
        
        
    }
}
