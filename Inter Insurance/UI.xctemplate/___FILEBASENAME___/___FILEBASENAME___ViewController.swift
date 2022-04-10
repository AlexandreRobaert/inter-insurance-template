
//
//  ___FILEHEADER___
//

import UIKit
import CoreUI

public class ___VARIABLE_viewControllerName:identifier___: CoreUI.NavigationController {

    // MARK: - PROPERTIES
    public let viewModel: ___VARIABLE_viewModelName:identifier___?
    public let contentView: ___VARIABLE_viewProtocolName:identifier___?

    // MARK: - PUBLIC API
    public weak var delegate: ___VARIABLE_productName:identifier___Delegate?

    // MARK: - INITIALIZERS
    public init(contentView: ___VARIABLE_productName:identifier___ViewProtocol = ___VARIABLE_productName:identifier___View(),
                viewModel: ___VARIABLE_productName:identifier___ViewModelProtocol) {
        self.contentView = contentView
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    @available (*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - LIFE CYCLE
    public override func loadView() {
        contentSetup()
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        viewModel?.initState()
    }
    
    // MARK: - PRIVATE
    private func setup() {
    }

    private func contentSetup() {
        if let contentView = contentView {
            self.view = contentView.content
        }
        contentView?.delegate = self
    }
}

extension ___VARIABLE_productName:identifier___: ___VARIABLE_productName:identifier___Protocol {
    public func updateView(with viewState: ___VARIABLE_featureName___ViewState) {
        contentView?.updateView(with: viewState)
    }
}

extension ___VARIABLE_productName:identifier___: ___VARIABLE_productName:identifier___ViewDelegate {

}
