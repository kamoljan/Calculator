import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var display: UILabel!
  
  var userIsInTheMiddleOfTypyingANumber: Bool = false
  
  @IBAction func appendDigit(sender: UIButton) {
    let digit = sender.currentTitle!
    if userIsInTheMiddleOfTypyingANumber {
      display.text = display.text! + digit
    } else {
      display.text = digit
      userIsInTheMiddleOfTypyingANumber = true
    }
    println("digit = \(digit)")
  }
}

