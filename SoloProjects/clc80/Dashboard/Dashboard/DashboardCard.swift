//
//  DashboardCard.swift
//  Dashboard
//
//  Created by Claudia Maciel on 12/13/20.
//

import UIKit

class DashboardCard: UIView {

    override init(frame: CGRect) {
        super .init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        self.backgroundColor = .white
    }
    
}
