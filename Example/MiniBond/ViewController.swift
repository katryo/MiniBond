import UIKit
import MiniBond

class ViewController: UIViewController {
    var textObservable: Observable<String>?
    var textInAppear = EventProducer<String>?()

    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        textObservable = Observable<String>{ [unowned self] text in
            print(text)
        }
        textInAppear = EventProducer("abb")
        textObservable!.bindTo(textInAppear!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

