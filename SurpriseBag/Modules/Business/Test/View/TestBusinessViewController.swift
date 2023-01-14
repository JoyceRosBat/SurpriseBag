//
//  TestBusinessViewController.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import UIKit

class TestBusinessViewController: UIViewController {
    
    var viewModel: TestBusinessViewModel
    
    init(viewModel: TestBusinessViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
    }
}
