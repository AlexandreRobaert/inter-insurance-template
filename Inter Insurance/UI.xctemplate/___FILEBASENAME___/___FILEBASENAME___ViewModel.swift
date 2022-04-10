//
//  ___FILEHEADER___
//

import Analytics
import InsuranceUI
import RxSwift
import Domain
import DomainShared
import ___VARIABLE_productName:identifier___Domain

public class ___VARIABLE_productName:identifier___ViewModel: ___VARIABLE_productName:identifier___ViewModelProtocol {

    // MARK: - PROPERTIES
    public weak var viewController: ___VARIABLE_productName:identifier___ViewControllerProtocol?
    public var viewEntity: ___VARIABLE_productName:identifier___ViewEntity?
    public var viewState: ___VARIABLE_productName:identifier___ViewState = .isEmpty {
        didSet {
            viewController?.updateView(with: viewState)
        }
    }
    
    // MARK: - INITIALIZERS
    public init(serviceUseCase: ___VARIABLE_productName:identifier___ServiceUseCaseProtocol, analyticsTracker: AnalyticsTracker) {
        self.serviceUseCase = serviceUseCase
        self.analyticsTracker = analyticsTracker
    }
    
    // MARK: - PUBLIC API
    public func initState() {
        
    }
}

// MARK: - Tracker
extension ___VARIABLE_productName:identifier___ViewModel {
    // Métodos de tagueamento aqui
}
