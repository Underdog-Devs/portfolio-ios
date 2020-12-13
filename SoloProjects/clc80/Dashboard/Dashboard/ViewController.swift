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
        
        let dashboardCard = DashboardCard()
        view.addSubview(dashboardCard)
        
        let image1 = UIImageView(image: #imageLiteral(resourceName: "image1"))
        let image2 = UIImageView(image: #imageLiteral(resourceName: "image2"))
        let title = UILabel()
        let subTitle = UILabel()
        
        dashboardCard.addSubview(image1)
        dashboardCard.addSubview(image2)
        dashboardCard.addSubview(title)
        dashboardCard.addSubview(subTitle)
        
        dashboardCard.translatesAutoresizingMaskIntoConstraints = false
        image1.translatesAutoresizingMaskIntoConstraints = false
        image2.translatesAutoresizingMaskIntoConstraints = false
        title.translatesAutoresizingMaskIntoConstraints = false
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = .lightGray
     
        title.font = UIFont.preferredFont(forTextStyle: .title1)
        subTitle.font = UIFont.preferredFont(forTextStyle: .subheadline)
        title.text = "$1200"
        subTitle.text = "45% This week"
        subTitle.textColor = .gray

 
        
        NSLayoutConstraint.activate([
            dashboardCard.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            dashboardCard.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            dashboardCard.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 8),
            
            image1.leadingAnchor.constraint(equalTo: dashboardCard.leadingAnchor, constant: 20),
            image1.topAnchor.constraint(equalTo: dashboardCard.topAnchor, constant: 20),
            image1.heightAnchor.constraint(equalToConstant: 50),
            image1.widthAnchor.constraint(equalToConstant: 50),
            
            title.leadingAnchor.constraint(equalTo: image1.leadingAnchor),
            title.topAnchor.constraint(equalTo: image1.bottomAnchor, constant: 20),
            
            image2.bottomAnchor.constraint(equalTo: title.centerYAnchor),
            image2.trailingAnchor.constraint(equalTo: dashboardCard.trailingAnchor, constant: -50),
            image2.widthAnchor.constraint(equalToConstant: 75),
            image2.heightAnchor.constraint(equalToConstant: 50),
            
            subTitle.leadingAnchor.constraint(equalTo: image1.leadingAnchor),
            subTitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 8),
        ])
        
    }


}

