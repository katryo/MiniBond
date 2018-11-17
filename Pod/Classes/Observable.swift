public class Observable<T> {
    public typealias Listener = (T) -> Void
    public var listener: Listener
    
    public init(_ listener: @escaping Listener) {
        self.listener = listener
    }
    
    public func bindTo(eventProducer: EventProducer<T>) {
        eventProducer.observableBoxes.append(ObservableBox(self))
    }
}
