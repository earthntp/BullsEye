
import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    var targetValue = Int.random(in: 1...100)
    
    @IBOutlet weak var targetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        startNewRound()
        
        
    }
    @IBAction func showAlert () {
        let message = "The value of the slider is: \(currentValue)" +
        "\n The target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Result",
                                      message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK",
                                   style: .default,
                                   handler: nil)
        
        alert.addAction(action)
        startNewRound()
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func slideMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        settext()
    }
    func settext () {
        let stringTarget = "\(targetValue)"
        self.targetLabel.text = stringTarget
    }

}

