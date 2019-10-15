
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    
    var newText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Momento de incialización
        print("Pantalla cargada")
        message.text = "Mensajeeeee"
    }

    @IBAction func botonPulsado(_ sender: Any) {
        print("botón pulsado")
        message.text = newText
        message.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    
    
    @IBAction func textoCambiado(_ sender: UITextField) {
        newText = sender.text!
        print(sender.text!)
    }
    
}

