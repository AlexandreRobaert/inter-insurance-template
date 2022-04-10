//
// ___FILEHEADER___
//

import Domain
import RxSwift

public protocol ___VARIABLE_productName:identifier___ServiceUseCaseProtocol {
    func execute<T: Codable>(with requestType: ___VARIABLE_productName:identifier___RequestType) -> Observable<Result<T, MessageError>>
}
