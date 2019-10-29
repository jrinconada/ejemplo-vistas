
import UIKit

class QRViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Crear mensaje y pasarlo a bytes
        let message = "hola"
        let data = message.data(using: .ascii)
        
        // Genererar código con CIFilter
        let filter = CIFilter(name: "CIQRCodeGenerator")
        filter?.setValue(data, forKey: "inputMessage")
        
        // Escalar y obtener imagen
        let transform = CGAffineTransform(scaleX: 12, y: 12)
        let imageQR = filter?.outputImage?.transformed(by: transform)
        
        // Mostrar imagen en un UIImageView
        imageView.image = UIImage(ciImage: imageQR!)
    }

}
