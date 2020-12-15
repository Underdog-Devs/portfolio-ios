//
//  ViewController.swift
//  Dashboard
//
//  Created by Claudia Maciel on 12/13/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let image1 = UIImageView(image: #imageLiteral(resourceName: "image1"))
        let image2 = UIImageView(image: #imageLiteral(resourceName: "image2"))
        let dashboardCard = DashboardCard(image1: image1, image2: image2, title: "$1200", subTitle: "45% This week")
        
        view.addSubview(dashboardCard)
        dashboardCard.backgroundColor = .cyan
        
        NSLayoutConstraint.activate([
            dashboardCard.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            dashboardCard.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            dashboardCard.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 8)
        ])
        
    }


}

