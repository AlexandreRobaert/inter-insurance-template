//
//  ___FILEHEADER___
//

import Domain
import DomainShared
import RxSwift

public class ___VARIABLE_productName:identifier___ServiceUseCase {
    
    private let service: ___VARIABLE_productName:identifier___ServiceProtocol
    private let retrieveMultiFactorAuthenticationUseCase: RetrieveMultiFactorAuthenticationUseCaseProtocol
    
    public init(service: ___VARIABLE_productName:identifier___ServiceProtocol, retrieveMultiFactorAuthenticationUseCase: RetrieveMultiFactorAuthenticationUseCaseProtocol) {
        self.service = service
        self.retrieveMultiFactorAuthenticationUseCase = retrieveMultiFactorAuthenticationUseCase
    }
    
    private func request<T: Codable>(_ requestType: ___VARIABLE_productName:identifier___RequestType) -> Observable<Result<T, ServiceError>> {
        let observable: Observable<Result<T, ServiceError>> = Observable.create { [weak self] observer in
            
            switch requestType {
            case .requestHome:
                self?.service.fetch___VARIABLE_productName:identifier___Home { (serviceResult: Result<T, ServiceError>) in
                    observer.onNext(serviceResult)
                    observer.onCompleted()
                }
            }
                
            return Disposables.create()
        }
        return observable
    }
 
    private func handler<T: Codable>(_ serviceResult: Result<T, ServiceError>) -> Result<T, MessageError> {
        switch serviceResult {
        case .success(let data): return .success(data)
        case .failure(let error): return .failure(.message(error.localizedDescription))
        }
    }
}

extension ___VARIABLE_productName:identifier___ServiceUseCase: ___VARIABLE_productName:identifier___ServiceUseCaseProtocol {
     
    public func execute<T: Codable>(with requestType: ___VARIABLE_productName:identifier___RequestType) -> Observable<Result<T, MessageError>> {
        return request(requestType).map { [unowned self] in
            self.handler($0)
        }
    }
}
