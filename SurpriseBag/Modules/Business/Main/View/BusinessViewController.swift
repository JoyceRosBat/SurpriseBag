//
//  BusinessViewController.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/1/23.
//

import UIKit

class BusinessViewController: UIViewController {
    
    lazy var button: GrayButton = {
        let button = GrayButton()
        button.setTitle("Test", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 160).isActive = true
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        return button
    }()
    
    let dependencies: BusinessDependenciesResolver
    var viewModel: BusinessViewModel
    
    init(dependencies: BusinessDependenciesResolver) {
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
        view.addCentered(button)
    }

    @objc func tap() {
        viewModel.gotoTest()
    }
    
}
