//
// ___FILEHEADER___
//

import Domain
import DomainShared
import ___VARIABLE_productName:identifier___Domain
import Networking

public class ___VARIABLE_productName:identifier___Service: InsuranceServiceProtocol {
    
    // MARK: - Properties
    public let operation: NetworkingOperationProtocol
    private let credentials: CredentialsProtocol

    // MARK: - INITIALIZERS
    public required init(operation: NetworkingOperationProtocol, credentials: CredentialsProtocol) {
        self.operation = operation
        self.credentials = credentials
    }
}

// MARK: - REQUESTS
extension ___VARIABLE_productName:identifier___Service {
    public func fetch___VARIABLE_productName:identifier___Home<T: Codable>(handler: @escaping (Result<T, ServiceError>) -> Void) {
        let request = ___VARIABLE_productName:identifier___Request.home
        makeRequest(request, type: T.self, handler: handler)
    }
}
