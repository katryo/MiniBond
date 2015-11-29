class EventProducer<T> {
    var value: T {
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
    
    var observableBoxes: [ObservableBox<T>] = []
    
    init(_ v: T) {
        value = v
    }
}
