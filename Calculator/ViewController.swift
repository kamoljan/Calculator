import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var display: UILabel!
  
  var userIsInTheMiddleOfTypyingANumber = false
  
  @IBAction func appendDigit(sender: UIButton) {
    let digit = sender.currentTitle!
    if userIsInTheMiddleOfTypyingANumber {
      display.text = display.text! + digit
    } else {
      display.text = digit
      userIsInTheMiddleOfTypyingANumber = true
    }
  }
  
  var operandStack = Array<Double>()
  @IBAction func enter() {
    userIsInTheMiddleOfTypyingANumber = false
    operandStack.append(displayValue)
    println("operandStack = \(operandStack)")
  }
  
  var displayValue: Double {
    get {
      return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
    }
    set {
      display.text = "\(newValue)"
      userIsInTheMiddleOfTypyingANumber = false
    }
  }
  
  @IBAction func operate(sender: AnyObject) {
    let operation = sender.currentTitle
    println("operation = \(operation)")
  }
  
}

