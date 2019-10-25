

import UIKit

class RojaViewController: UIViewController {
    
    @IBOutlet weak var vista: UIView!
    @IBOutlet weak var verde: UIView!
    @IBOutlet weak var azul: UIView!
    
    @IBAction func atras(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func animar(_ sender: Any) {
        vista.alpha = 0
        UIView.animate(withDuration: 2) {
            self.vista.alpha = 1
        }
    }
    
    @IBAction func mover(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {
            self.vista.backgroundColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        }) { (animationOk) in
            UIView.animate(withDuration: 2, animations: {
                self.vista.bounds = CGRect(x: 100, y: 100, width: 800, height: 800)
            }) 
        }
    }
    
    @IBAction func transicion(_ sender: Any) {
        UIView.transition(from: verde, to: azul, duration: 2, options: [.transitionFlipFromRight, .showHideTransitionViews])
    }
    
}
