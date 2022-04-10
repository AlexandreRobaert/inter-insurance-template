//
// ___FILEHEADER___
//

import DomainShared
import InsuranceDomain

public protocol ___VARIABLE_productName:identifier___ServiceProtocol: InsuranceServiceProtocol {
    func fetch___VARIABLE_productName:identifier___Home<T: Codable>(handler: @escaping (Result<T, ServiceError>) -> Void)
    func fetch___VARIABLE_productName:identifier___Plans<T: Codable>(handler: @escaping (Result<T, ServiceError>) -> Void)
}
