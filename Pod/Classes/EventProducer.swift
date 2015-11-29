public class EventProducer<T> {
    public var value: T {
        didSet {
            observableBoxes = observableBoxes.filter(
                {
                    (observableBox: ObservableBox<T>) -> Bool in
                    observableBox.observable != nil
                }
            )
            observableBoxes.forEach(
                {
                    (observableBox: ObservableBox<T>) -> Void in
                    observableBox.observable?.listener(self.value)
                }
            )
        }
    }
    
    public var observableBoxes: [ObservableBox<T>] = []
    
    public init(_ v: T) {
        self.value = v
    }
}
