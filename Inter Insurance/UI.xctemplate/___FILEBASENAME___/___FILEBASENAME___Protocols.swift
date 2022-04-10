//
//  ___FILEHEADER___
//

import Analytics

public protocol ___VARIABLE_productName:identifier___ViewControllerProtocol: AnyObject {
    var contentView: ___VARIABLE_productName:identifier___ViewProtocol? { get }
    var viewModel: ___VARIABLE_productName:identifier___ViewModelProtocol? { get }
    var delegate: ___VARIABLE_productName:identifier___ViewControllerDelegate? { get set }
    func updateView(with viewState: ___VARIABLE_productName:identifier___ViewState)
}

public protocol ___VARIABLE_productName:identifier___ViewModelProtocol: AnyObject {
    var viewController: ___VARIABLE_productName:identifier___ViewControllerProtocol? { get set}
    var viewEntity: ___VARIABLE_productName:identifier___ViewEntity? { get set }
    var viewState: ___VARIABLE_productName:identifier___ViewState { get }
    var analyticsTracker: AnalyticsTracker { get }
    var serviceUseCase: ___VARIABLE_productName:identifier___ServiceUseCaseProtocol { get }
    func initState()
}

public protocol ___VARIABLE_productName:identifier___ViewControllerDelegate: ___VARIABLE_productName:identifier___FlowControllerProtocol {
    
}
