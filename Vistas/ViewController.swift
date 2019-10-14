
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Momento de incialización
        print("Pantalla cargada")
        message.text = "Mensajeeeee"
    }

    @IBAction func botonPulsado(_ sender: Any) {
        print("botón pulsado")
        message.text = "pulsadoooo"
        message.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    
    
    @IBAction func textoCambiado(_ sender: UITextField) {
        print(sender.text!)
    }
    
}

