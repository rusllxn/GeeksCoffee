//
//  AuthViewController.swift
//  GeeksCoffee
//
//  Created by Руслан Канжарбеков on 01.04.2024.
//

import UIKit

//MARK: - AuthViewController
class AuthViewController: UIViewController {

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
    
    private lazy var authStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var authTitleLabel: UILabel = {
        let view = UILabel()
        view.text = "Entry"
        view.textColor = AppColors.darkBlue
        view.font = .systemFont(ofSize: 34)
        return view
    }()
    
    private lazy var numberTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "555 555 555"
        view.backgroundColor = .systemGray6
        view.layer.cornerRadius = 25
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.gray.cgColor
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 24))
        let image = UIImageView()
        image.image = UIImage(systemName: "phone")
        image.tintColor = .lightGray
        image.contentMode = .scaleAspectFit
        image.frame = CGRect(x: 16, y: 0, width: 24, height: 24)
        leftView.addSubview(image)
        view.leftView = leftView
        view.leftViewMode = .always
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
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    //MARK: - Methods
    
}

//MARK: - Setting Views
private extension AuthViewController {
    func setupView() {
        view.backgroundColor = .systemBackground
        
        addSubViews()
        setupLayout()
    }
}

//MARK: - Setting
private extension AuthViewController {
    func addSubViews() {
        view.addSubview(titleStackView)
        titleStackView.addArrangedSubview(titleLabel)
        titleStackView.addArrangedSubview(titleNameLabel)
        
        view.addSubview(authStackView)
        authStackView.addArrangedSubview(authTitleLabel)
        authStackView.addArrangedSubview(numberTextField)
        authStackView.addArrangedSubview(signInButton)
    }
}

//MARK: - Layout
private extension AuthViewController {
    func setupLayout() {
        NSLayoutConstraint.activate([
            titleStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            titleStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            authStackView.topAnchor.constraint(equalTo: titleStackView.bottomAnchor, constant: 60),
            authStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            authStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            
            authTitleLabel.heightAnchor.constraint(equalToConstant: 46),
            numberTextField.heightAnchor.constraint(equalToConstant: 56),
            signInButton.heightAnchor.constraint(equalToConstant: 56),
            
        ])
    }
}
