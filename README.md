# MiniBond

[![CI Status](http://img.shields.io/travis/Ryo Kato/MiniBond.svg?style=flat)](https://travis-ci.org/Ryo Kato/MiniBond)
[![Version](https://img.shields.io/cocoapods/v/MiniBond.svg?style=flat)](http://cocoapods.org/pods/MiniBond)
[![License](https://img.shields.io/cocoapods/l/MiniBond.svg?style=flat)](http://cocoapods.org/pods/MiniBond)
[![Platform](https://img.shields.io/cocoapods/p/MiniBond.svg?style=flat)](http://cocoapods.org/pods/MiniBond)

## What is MiniBond?

MiniBond is a very simple tool for reactive progamming in Swift using observer pattern.

MiniBond

1. Create a `EventProducer` object with the argument that is the real object you want to observe the change.
2. Create an `Observable` object with a closure that is called when the `EventProducer`'s value object changes.
3. Bind to the `EventProducer` with the `Observable` object by `Observable.bindTo(EventProducer)`.
4. Then, when `EventProducer`'s value object changes, the closure is called.

Here is a example.

- `EventProducer` object is `count`.
- `Observable` object it `countObservable`.

```swift
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
```

1. Create `count` that is an `EventProducer` with the argument `0`. This integer is what you want to observe the change.
2. Create `countObservable` with the closure that increases the count.
3. Bind to the `count` with the `countObservable` by `countObservable.bindTo(count)`.
4. Then, when `EventProducer`'s value object changes, the closure is called.

Then, when `count`'s value is changed, the closure;

```
{ [unowned self] eventProducer in
    self.countLabel.text = String(self.count.value)
}
```

is called.

## Use with CocoaPods

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Swift 1.2+

## Installation

MiniBond is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MiniBond"
```

## Author

katryo

## License

MiniBond is available under the MIT license. See the LICENSE file for more info.
