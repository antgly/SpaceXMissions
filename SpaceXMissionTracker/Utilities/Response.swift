enum Response<A> {
    case Data(A)
    case Error(_ error: Error)
}
