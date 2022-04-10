//
//  ___FILEHEADER___
//

import Analytics
import InsuranceUI
import ___VARIABLE_productName:identifier___Domain

public protocol ___VARIABLE_productName:identifier___ViewProtocol: AnyObject {
    var content: UIView { get }
    var delegate: ___VARIABLE_productName:identifier___ViewDelegate? { get set }
    func updateView(with viewState: ___VARIABLE_productName:identifier___ViewState)
}

public protocol ___VARIABLE_productName:identifier___ViewDelegate: AnyObject {
    // events clicks on view
}

extension ___VARIABLE_productName:identifier___ViewProtocol where Self: UIView {
    public var content: UIView { return self }
}
