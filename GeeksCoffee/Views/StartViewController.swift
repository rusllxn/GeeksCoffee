//
//  AuthViewController.swift
//  GeeksCoffee
//
//  Created by Руслан Канжарбеков on 01.04.2024.
//

import UIKit

//MARK: - StartViewController
class StartViewController: UIViewController {
    
    //MARK: - Private Property
    private lazy var titleStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Geeks"
        view.font = .italicSystemFont(ofSize: 45)
        view.textAlignment = .center
        view.textColor = AppColors.yellow
        return view
    }()
    
    private lazy var titleNameLabel: UILabel = {
        let view = UILabel()
        view.text = "COFFEE"
        view.font = .italicSystemFont(ofSize: 40)
        view.textAlignment = .center
        return view
    }()
    
    private lazy var authButtonStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var signInButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Sign In", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = AppColors.orange
        view.layer.cornerRadius = 25
        return view
    }()
    
    private lazy var signUpButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Sign Up", for: .normal)
        view.setTitleColor(.lightGray, for: .normal)
        return view
    }()
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupView()
    }
    
    // MARK: - Methods
    
}

//MARK: - Setting Views
private extension StartViewController {
    func setupView() {
        view.backgroundColor = .systemBackground
        
        addSubViews()
        setupLayout()
    }
}

//MARK: - Setting
private extension StartViewController {
    func addSubViews() {
        view.addSubview(titleStackView)
        titleStackView.addArrangedSubview(titleLabel)
        titleStackView.addArrangedSubview(titleNameLabel)
        
        view.addSubview(authButtonStackView)
        authButtonStackView.addArrangedSubview(signInButton)
        authButtonStackView.addArrangedSubview(signUpButton)
    }
}

//MARK: - Layout
private extension StartViewController {
    func setupLayout() {
        NSLayoutConstraint.activate([
            titleStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            titleStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            authButtonStackView.topAnchor.constraint(equalTo: titleStackView.bottomAnchor, constant: 100),
            authButtonStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            authButtonStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            
            signInButton.heightAnchor.constraint(equalToConstant: 56),
        ])
    }
}
