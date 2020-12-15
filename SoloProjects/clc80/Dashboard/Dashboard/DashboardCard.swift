//
//  DashboardCard.swift
//  Dashboard
//
//  Created by Claudia Maciel on 12/13/20.
//

import UIKit

class DashboardCard: UIView {
    //MARK: - Properties
    var image1 = UIImageView()
    var image2 = UIImageView()
    let title = UILabel()
    let subTitle = UILabel()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(image1: UIImageView, image2: UIImageView, title: String, subTitle: String) {
        super .init(frame: .zero)
        self.image1 = image1
        self.image2 = image2
        self.title.text = title
        self .subTitle.text = subTitle
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        self.backgroundColor = .systemPink
        
        self.addSubview(image1)
        self.addSubview(image2)
        self.addSubview(title)
        self.addSubview(subTitle)
        
        translatesAutoresizingMaskIntoConstraints = false
        image1.translatesAutoresizingMaskIntoConstraints = false
        image2.translatesAutoresizingMaskIntoConstraints = false
        title.translatesAutoresizingMaskIntoConstraints = false
        subTitle.translatesAutoresizingMaskIntoConstraints = false
     
        title.font = UIFont.preferredFont(forTextStyle: .title1)
        subTitle.font = UIFont.preferredFont(forTextStyle: .subheadline)
        subTitle.textColor = .gray
        
        NSLayoutConstraint.activate([
            image1.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            image1.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            image1.heightAnchor.constraint(equalToConstant: 50),
            image1.widthAnchor.constraint(equalToConstant: 50),
            
            title.leadingAnchor.constraint(equalTo: image1.leadingAnchor),
            title.topAnchor.constraint(equalTo: image1.bottomAnchor, constant: 20),
            
            image2.bottomAnchor.constraint(equalTo: title.centerYAnchor),
            image2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            image2.widthAnchor.constraint(equalToConstant: 75),
            image2.heightAnchor.constraint(equalToConstant: 50),
            
            subTitle.leadingAnchor.constraint(equalTo: image1.leadingAnchor),
            subTitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 8),
        ])
        
    }
}
