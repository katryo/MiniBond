import UIKit
import MiniBond

class ViewController: UIViewController {
    let count = EventProducer<Int>(0)
    var countObservable: Observable<Int>?

    @IBOutlet weak var countLabel: UILabel!

    @IBAction func buttonPushed(sender: UIButton) {
        self.count.value += 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countObservable = Observable<Int>{ [unowned self] eventProducer in
            self.countLabel.text = String(self.count.value)
        }
        countObservable?.bindTo(count)
    }
}

