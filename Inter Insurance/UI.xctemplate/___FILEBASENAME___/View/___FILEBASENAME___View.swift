//
// ___FILEHEADER___
//

import UIKit

final public class ___VARIABLE_viewName:identifier___: UIView {
    
    // MARK: - METRICS
    private enum Metrics {
        static let margin: CGFloat = 24
    }
    
    // MARK: - UI
    private lazy var view: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    // MARK: - PUBLIC API
    public weak var delegate: ___VARIABLE_productName:identifier___ViewDelegate?
    
    // MARK: - INITIALIZERS
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setup()
    }

    @available (*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - PRIVATE
    func setup() {
        buildViewHierarchy()
        addConstraints()
    }
    
    private func buildViewHierarchy() {
        addSubview(view)
    }
    
    private func addConstraints() {
        view.constraintToSuperview()
    }
    
    private func updateView(with entity: ___VARIABLE_viewEntityName:identifier___) {
        
    }
}

extension ___VARIABLE_viewName:identifier___: ___VARIABLE_viewProtocolName:identifier___ {
    public func updateView(with viewState: ___VARIABLE_viewStateName:identifier___) {
        
    }
}
