class ObservableBox<T> {
    weak var observable: Observable<T>?
    init(_ observable: Observable<T>) {
        self.observable = observable
    }
}
