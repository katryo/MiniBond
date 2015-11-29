import UIKit
import MiniBond

class ViewController: UIViewController {
    var count = EventProducer<Int>(0)
    var countObservable: Observable<Int>?

    @IBOutlet weak var countLabel: UILabel!

    @IBAction func buttonPushed(sender: UIButton) {
        count.value += 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countObservable = Observable<Int>{ [unowned self] count in
            self.countLabel.text = String(self.count.value)
        }
        countObservable?.bindTo(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

