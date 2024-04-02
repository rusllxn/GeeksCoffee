//
//  MainViewController.swift
//  GeeksCoffee
//
//  Created by Руслан Канжарбеков on 29.03.2024.
//

import UIKit

//MARK: - MainViewController
class MainViewController: UIViewController {
    
    //MARK: - Private Property
    
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    //MARK: - Methods
    private func setupNavigationItem() {
        let rightNotificationButton = UIBarButtonItem(image: UIImage(systemName: "bell"), style: .plain, target: self, action: .none)
        rightNotificationButton.tintColor = .black
        
        navigationItem.title = "Menu"
        navigationItem.rightBarButtonItem = rightNotificationButton
    }
}

//MARK: - Setting Views
private extension MainViewController {
    func setupView() {
        view.backgroundColor = .systemBackground
        
        setupNavigationItem()
        addSubViews()
        setupLayout()
    }
}

//MARK: - Setting
private extension MainViewController {
    func addSubViews() {
        
    }
}

//MARK: - Layout
private extension MainViewController {
    func setupLayout() {
        NSLayoutConstraint.activate([
            
        ])
    }
}

