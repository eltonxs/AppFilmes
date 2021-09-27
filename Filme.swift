//
//  Filme.swift
//  AppFilmes
//
//  Created by Elton Souza on 22/09/21.
//

import UIKit

class Filme {
    
    var titulo: String!
    var descricao: String!
    var image: UIImage!
    
    init(titulo: String, descricao: String, imagem: UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.image = imagem
    }
    
    
}
