//-------
import UIKit
//-------
class ViewController: UIViewController {
    //-------
    // Propriété @IBOutlet représentant un "UITextField" : textField
    @IBOutlet weak var textField: UITextField!
    
    // Propriété @IBOutlet représentant un "UITextView" : textView
    @IBOutlet weak var textView: UITextView!
    
    // Propriété variable de type chain de caracteres (CDC) vide pour afficher le résultat:
    var resultToDisplay = String()
    
    // Propriété tableau de type CDC contenant des noms: arrOfNames
    let arrOfNames = ["Armand", "Bart", "Annie", "Caro", "Alain", "Brad"]
    
    // Propriété Propriété de type Dictionnaire pour organiser les noms selon la première lettre
    var namesByAlphabet = [String.Element: [String]]()
    
    //-------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Assigner à "namesByAlphabet" un dictionnaire groupant les noms selon la première lettre
        namesByAlphabet = Dictionary(grouping: arrOfNames, by: {$0.first!})
    }
    @IBAction func search(_ sender: UITextField) {
        //S'assurer que "resultToDisplay" est vide au debut
        resultToDisplay = ""
        
        //Boucle avec les clés et les valeurs de "namesByAlphabet"
        for (key, value) in namesByAlphabet {
            
            //Si le contenu de "textField" égale la valeur de "key" converti en CDC alors:
            if textField.text == String(key) {
                
                // Boucle avec "index" de 0 à plus petit que le nombre d'éléments dans "value"
                for index in 0..<value.count {
                    //Assigne à resultToDisplay sa valeur plus l'élément à l'index de "value" et un retour de chariot
                    resultToDisplay += "\(value[index])\n"
                }
            }
        }
        // Assigne au texte de "textView" la valeur de resultToDisplay à la fin de la boucle de "namesByAlphabet"
        textView.text = resultToDisplay
    }
    //-------
}
