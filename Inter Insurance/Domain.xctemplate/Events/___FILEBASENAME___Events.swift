//
// ___FILEHEADER___
//

import Analytics
import Foundation
import Domain
import INTAnalyticsCore
import InsuranceDomain

public enum ___VARIABLE_productName:identifier___Events: InsuranceEventProtocol {
    
    case caseEvent(param: String)
    
    public var label: String {
        switch self {
        case .caseEvent:
            return "Inicio"
        }
    }
    
    private var action: String {
        switch self {
        case .caseEvent:
            return "DC"
        default:
            return "T"
        }
    }
    
    private var screenName: String {
        switch self {
        case .caseEvent:
            return "Home"
        }
    }
    
    public var name: String {
        return "prefix-product\(self.screenName)_\(self.action)_\(self.label)"
    }
    
    public var parameters: [String: Any]? {
        switch self {
        case .caseEvent(let param):
            return ["paramKey": param]
        }
    }
}
