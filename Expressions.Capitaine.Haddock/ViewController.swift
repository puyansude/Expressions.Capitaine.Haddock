//
//  ViewController.swift
//  Expressions.Capitaine.Haddock
//
//  Created by Alain on 2014-07-14.
//  Copyright (c) 2014 TIM. All rights reserved.
//  --------------------------------------------------------
//  M-A-J:
//          2015.08.14 - Projet adapté à Xcode 6.4
//          2015.08.14 - Ajout à GitHUB
//  --------------------------------------------------------
///  TODO: Valider si l'image 'indice' est disponible
//
import UIKit

class ViewController: UIViewController {

    // MARK: Déclaration des propriétés de la classe
    
    /// Tableau contenant de savoureuses expressions
    /// du personnage 'Capitain Haddock'
    let expressionsHaddock = [
        "Bachi-bouzouk",
        "Mille millions de mille sabords",
        "Bougres de faux jetons à la sauce tartare",
        "Espèce de porc-épic mal embouché",
        "Patagon de zoulous",
        "Bougre d’extrait de cornichon",
        "Simili-martien à la graisse de cabestan",
        "Sombre oryctérope",
        "Traîne-potence",
        "Bougres d’extrait de crétins des Alpes",
        "Cornichon de zouave de tonnerre de Brest",
    ]
    
    // ** Fin de -> Déclaration des propriétés de la classe
    
    
    // MARK: Déclaration des liens MVC
    
    @IBOutlet var expHaddock: UITextView!
    @IBOutlet var imageHaddock: UIImageView!
    
    @IBAction func afficherUneExpression(sender: AnyObject) {

        // Le code de cette fonction sera
        // exécuté suite à un clic du bouton
 
        let indice = Int(arc4random() % UInt32(expressionsHaddock.count))  // retournera un nombre entre 0 et nbElementsTableauExpressions - 1
        

        println(indice)
        expHaddock.text = "Expression no \(indice): \n\n\(expressionsHaddock[indice])"
        // FIXME: Prévoir un fichier d'image invalide
        imageHaddock.image = UIImage(named: "haddock\(indice + 1).jpg")
        
    }  // @IBAction func afficherUneExpression()
    
    // ** Fin de -> Déclaration des liens MVC
    

    // MARK: Surcharge des méthodes de la super classe
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

