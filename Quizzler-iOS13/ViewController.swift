

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        "Four + Two is equal a to six",
        "Five - Three is greater than one",
        "Three + Eight is less than Ten"
    ]
    //Essa variavel acompanha qual pergunta que o usuário está lendo.
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upDateUi()
    }
    //essa Ib é acionada sempre quando o botão true e false é pressionado
    
    func answerButtonPressed(_ sender: UIButton) {
        // aqui estamos aumentando o nosso número de perguntas em um sempre que o botão um botão de resposta for pressionado questionNumber = o valor atual do número da pergunta + 1. questionNumber = questionNumber + 1
        questionNumber += 1
        upDateUi()
    }
    
    func upDateUi() {
        questionLabel.text = quiz[questionNumber]
    }
    
}




