public class ObservableBox<T> {
    public weak var observable: Observable<T>?
    public init(_ observable: Observable<T>) {
        self.observable = observable
    }
}
