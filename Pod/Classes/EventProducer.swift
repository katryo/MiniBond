public class EventProducer<T> {
    public var value: T {
        didSet {
//            The filter deletes the observableboxes.
//            
//            When you run the app, move to the page using MiniBond,
//            do something and then go back with the left button on the top,
//            the view controller was created and then deleted.
//            When the view controller was deleted, the observableBox related to the eventProducer does not be deleted.
//            However, observableBox.observable becomes nil.
//            This is because ObservableBox.observable is weak reference.
//
//            When you repeat the action that go to the page and go back, there will be a lot of empty ObservableBoxes.
//            They do not harm except for a little extra memory usage.
//            I did not want to allow extra usage of memory, so I added the filter.

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
    
    public init(_ value: T) {
        self.value = value
    }
}
