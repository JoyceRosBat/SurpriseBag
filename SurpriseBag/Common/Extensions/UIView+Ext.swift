//
//  UIView+Ext.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/01/23.
//

import UIKit

extension UIView {
    static var identifier: String {
        String(describing: self)
    }
    
    func addCentered(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        NSLayoutConstraint.activate([
            view.centerYAnchor.constraint(equalTo: centerYAnchor),
            view.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func fill(with view: UIView, edges: UIEdgeInsets = .zero, ignoringSafeArea: Bool = false) {
        if ignoringSafeArea {
            fillIgnoringSafeArea(with: view, edges: edges)
        } else {
            fillToSafeArea(with: view, edges: edges)
        }
    }
    
    private func fillIgnoringSafeArea(with view: UIView, edges: UIEdgeInsets = .zero) {
        view.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(view)
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -edges.top),
            bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: edges.bottom
            ),
            leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -edges.left),
            trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: edges.right)
        ])
    }

    private func fillToSafeArea(with view: UIView, edges: UIEdgeInsets = .zero) {
        view.translatesAutoresizingMaskIntoConstraints = false

        addSubview(view)
        NSLayoutConstraint.activate([
            safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -edges.top),
            safeAreaLayoutGuide.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: edges.bottom
            ),
            leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -edges.left),
            trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: edges.right)
        ])
    }
}
