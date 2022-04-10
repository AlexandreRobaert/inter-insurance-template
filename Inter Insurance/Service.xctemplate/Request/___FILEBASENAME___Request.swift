//
//  ___FILEHEADER___
//

import Domain
import DomainShared
import InsuranceDomain
import Networking
import ___VARIABLE_productName:identifier___Domain

public enum ___VARIABLE_productName:identifier___Request: Request {
    
    case home
    
    public var path: String {
        switch self {
        case .home: return "/app-pf/seguros/v1/affinity-bff/home"
        }
    }

    public var method: HTTPMethod {
        switch self {
        case .home:
            return .post
        default:
            return .get
        }
    }

    public var parameters: RequestParameters? {
        switch self {
        default:
            return nil
        }
    }

    public var headers: [String: Any]? {
        var headers = [String: Any]()
        
        if let envrioment = self.enviroment {
            switch envrioment {
            case .production: headers["X-app-env"] = "PRD"
            case .staging: headers["X-app-env"] = "PREPROD"
            default: headers["X-app-env"] = "HML"
            }
        }
        
        switch self {
        case .home:
            headers["keyHeader"] = "valueHeader"
        default:
            return headers
        }
        
        return headers
    }

    public var cacheable: Bool? {
        switch self {
        case .home: return false
        default: return true
        }
    }

    public var options: [RequestOption]? {
        return nil
    }
    
    public var authorization: AuthorizationType? {
        return .ca
    }

    // MARK: - Private properties
    private var enviroment: EnvironmentType? {
        switch self {
        case .home: return enviroment
        default: return nil
        }
    }
}
