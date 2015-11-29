class Observable<T> {
    typealias Listener = T -> Void
    var listener: Listener
    
    init(_ listener: Listener) {
        self.listener = listener
    }
    
    func bindTo(eventProducer: EventProducer<T>) {
        eventProducer.observableBoxes.append(ObservableBox(self))
    }
}
