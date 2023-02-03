//
//  MainViewController.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import UIKit

class MainViewController: UIViewController {
    lazy var businessButton: GrayButton = {
        let button = GrayButton()
        button.setTitle("Business", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 160).isActive = true
        button.addTarget(self, action: #selector(buttonTap(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var customerButton: GrayButton = {
        let button = GrayButton()
        button.setTitle("Customer", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 160).isActive = true
        button.addTarget(self, action: #selector(buttonTap(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            businessButton,
            customerButton
        ])
        stackView.spacing = 16
        stackView.distribution = .equalCentering
        return stackView
    }()
    
    var viewModel: MainViewModel
    var dependencies: MainDependenciesResolver
    
    init(dependencies: MainDependenciesResolver) {
        self.dependencies = dependencies
        self.viewModel = dependencies.resolve()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addCentered(stackView)
    }
    
    @objc func buttonTap(_ button: UIButton) {
        if button == businessButton {
            viewModel.navigateTo(.business)
        } else {
            viewModel.navigateTo(.customer)
        }
    }
}
