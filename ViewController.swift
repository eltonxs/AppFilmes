//
//  ViewController.swift
//  AppFilmes
//
//  Created by Elton Souza on 22/09/21.
//

import UIKit

class ViewController: UITableViewController {
    var filmes: [Filme] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme(titulo: "007 - Spectre", descricao: "descricao 1", imagem: #imageLiteral(resourceName: "filme1") )
        filmes.append(filme)
        // utilizar imagem: imagemLiteral - depois dois cliques em cima da imagem e seleciona
        filme = Filme(titulo: "Star Wars", descricao: "descricao 2", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        filme = Filme(titulo: "Impacto Mortal", descricao: "descricao 1", imagem: #imageLiteral(resourceName: "filme3") )
        filmes.append(filme)
        // utilizar imagem: imagemLiteral - depois dois cliques em cima da imagem e seleciona
        filme = Filme(titulo: "Deadpool", descricao: "descricao 2", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append(filme)
        filme = Filme(titulo: "O Regresso", descricao: "descricao 1", imagem: #imageLiteral(resourceName: "filme5") )
        filmes.append(filme)
        // utilizar imagem: imagemLiteral - depois dois cliques em cima da imagem e seleciona
        filme = Filme(titulo: "A Herdeira", descricao: "descricao 2", imagem: #imageLiteral(resourceName: "filme6"))
        filmes.append(filme)
        filme = Filme(titulo: "Caçadores de Emoçao", descricao: "descricao 1", imagem: #imageLiteral(resourceName: "filme7") )
        filmes.append(filme)
        // utilizar imagem: imagemLiteral - depois dois cliques em cima da imagem e seleciona
        filme = Filme(titulo: "Tarzan", descricao: "descricao 2", imagem: #imageLiteral(resourceName: "filme9"))
        filmes.append(filme)
        filme = Filme(titulo: "Hardcore", descricao: "descricao 2", imagem: #imageLiteral(resourceName: "filme10"))
        filmes.append(filme)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme: Filme = filmes[ indexPath.row ]
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        celula.filmeimageView.image = filme.image
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao
        
        //aqui abaixo eu faco o arredondamento da imagem do filme
        celula.filmeimageView.layer.cornerRadius = 42
        celula.filmeimageView.clipsToBounds = true
      
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "detalheFilme" {
    if let indexPath = tableView.indexPathForSelectedRow {
    let filmeSelecionado = self.filmes[ indexPath.row ]
     
    let viewControllerDestino = segue.destination as! DetalhesFilmeViewController
    viewControllerDestino.filme = filmeSelecionado
     
    }
    }
    }
    
    

}


