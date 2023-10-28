//
//  SignInPage.swift
//  Assignment-13
//
//  Created by Eka Kelenjeridze on 27.10.23.
//

import UIKit

final class SignInPage: UIViewController {
    
    //MARK: - constants & variables
    let firstStackView = UIStackView()
    let secondStackView = UIStackView()
    let socialMediaIconsStackView = UIStackView()
    
    let signInLabel = UILabel()
    
    let firstTextField = UITextField()
    let secondTextField = UITextField()
    
    let forgotPasswordLabel = UILabel()
    
    let backgroundImage = UIImageView()
    let userImage = UIImageView()
    let googleLogo = UIImageView()
    let facebookLogo = UIImageView()
    let linkedinLogo = UIImageView()
    
    let signInButton = UIButton()
    
    let signUpLabel = UILabel()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupBackgroundImage()
        setupUserImage()
        setupSignInLabel()
        setupSignInButton()
        setupFirstTextField()
        setupSecondTextField()
        setupForgotPasswordLabel()
        setupSignUpLabel()
        setupSocialMediaIconsStackView()
    }
    
    //MARK: Setup UI elements
    func setupBackgroundImage() {
        backgroundImage.image = UIImage(named: "backgroundImage")
        backgroundImage.frame = CGRect(x: 0, y: 0,  width: view.frame.width, height: view.frame.height / 3)
        backgroundImage.contentMode = .scaleAspectFit
        
        view.addSubview(backgroundImage)
        //        view.sendSubviewToBack(backgroundImage)
        
    }
    
    func setupUserImage() {
        userImage.image = UIImage(named: "userImage")
        userImage.frame = CGRect(x: 116.5, y: 99, width: 160, height: 160)
        userImage.contentMode = .scaleAspectFit
        //round image
        userImage.layer.masksToBounds = true
        userImage.layer.cornerRadius = userImage.frame.height/2
        
        view.addSubview(userImage)
    }
    
    func setupSignInLabel() {
        signInLabel.text = "Sign In"
        signInLabel.frame = CGRect(x: 150, y: 274, width: 93, height: 34)
        signInLabel.backgroundColor = UIColor.clear
        signInLabel.textAlignment = .center
        signInLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        signInLabel.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        
        view.addSubview(signInLabel)
    }
    
    func setupFirstTextField() {
        let addPadding: UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        firstTextField.leftView = addPadding
        firstTextField.leftViewMode = .always
        firstTextField.rightView = addPadding
        firstTextField.rightViewMode = .always
        
        firstTextField.placeholder = "Email"
        firstTextField.frame = CGRect(x: 52, y: 340, width: 289, height: 53)
        firstTextField.textColor = UIColor(red: 0.373, green: 0.373, blue: 0.373, alpha: 1)
        firstTextField.font = UIFont.systemFont(ofSize: 14)
        firstTextField.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1)
        firstTextField.layer.cornerRadius = 16
        
        view.addSubview(firstTextField)
    }
    
    func setupSecondTextField() {
        let addPadding: UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        secondTextField.leftView = addPadding
        secondTextField.leftViewMode = .always
        secondTextField.rightView = addPadding
        secondTextField.rightViewMode = .always
        
        secondTextField.placeholder = "Password"
        secondTextField.isSecureTextEntry = true
        secondTextField.frame = CGRect(x: 52, y: 408, width: 289, height: 53)
        secondTextField.textColor = UIColor(red: 0.373, green: 0.373, blue: 0.373, alpha: 1)
        secondTextField.font = UIFont.systemFont(ofSize: 14)
        secondTextField.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1)
        secondTextField.layer.cornerRadius = 16
        
        
        view.addSubview(secondTextField)
    }
    
    func setupForgotPasswordLabel() {
        forgotPasswordLabel.text = "Forgot Your Password?"
        forgotPasswordLabel.frame = CGRect(x: 52, y: 476, width: 289, height: 17)
        forgotPasswordLabel.backgroundColor = UIColor.clear
        forgotPasswordLabel.textAlignment = .right
        forgotPasswordLabel.textColor = UIColor(red: 0.373, green: 0.373, blue: 0.373, alpha: 1)
        forgotPasswordLabel.font = UIFont.systemFont(ofSize: 14)
        
        view.addSubview(forgotPasswordLabel)
    }
    
    func setupSignInButton() {
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.setTitleColor(.white, for: .normal)
        signInButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        signInButton.backgroundColor = UIColor(red: 0.133, green: 0.341, blue: 0.478, alpha: 1)
        signInButton.layer.cornerRadius = 20
        signInButton.frame = CGRect(x: 50.5, y: 525, width: 292, height: 45)
        
        //adding the button on the view = screen
        view.addSubview(signInButton)
        
        //making the button functional
        
        signInButton.addAction(UIAction(handler: { [weak self] action in
            if self!.secondTextField.text?.isEmpty != true && self!.firstTextField.text?.isEmpty != true {
                self?.navigateToHomePage()
                print("button tapped")
            } else {
                self!.firstTextField.backgroundColor = UIColor(red: 0.89, green: 0.212, blue: 0.161, alpha: 0.5)
                self!.secondTextField.backgroundColor = UIColor(red: 0.89, green: 0.212, blue: 0.161, alpha: 0.5)
            }
        }), for: .touchUpInside)
    }
    
    func setupSignUpLabel() {
        signUpLabel.text = "Don’t have an account? Sign Up"
        signUpLabel.frame = CGRect(x: 95, y: 740, width: 207, height: 17)
        signUpLabel.backgroundColor = UIColor.clear
        signUpLabel.textAlignment = .right
        signUpLabel.textColor = UIColor(red: 0.373, green: 0.373, blue: 0.373, alpha: 1)
        signUpLabel.font = UIFont.systemFont(ofSize: 14)
        
        view.addSubview(signUpLabel)
    }
    
    func setupSocialMediaIconsStackView() {
        
        view.addSubview(socialMediaIconsStackView)
        
        socialMediaIconsStackView.translatesAutoresizingMaskIntoConstraints = false
        socialMediaIconsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        socialMediaIconsStackView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        socialMediaIconsStackView.widthAnchor.constraint(equalToConstant: 136).isActive = true
        socialMediaIconsStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 639).isActive = true
        
        googleLogo.image = UIImage(named: "googleLogo")
        facebookLogo.image = UIImage(named: "facebookLogo")
        linkedinLogo.image = UIImage(named: "linkedinLogo")
        
        socialMediaIconsStackView.addArrangedSubview(googleLogo)
        socialMediaIconsStackView.addArrangedSubview(facebookLogo)
        socialMediaIconsStackView.addArrangedSubview(linkedinLogo)
        
        socialMediaIconsStackView.axis = .horizontal
        socialMediaIconsStackView.alignment = .center
        socialMediaIconsStackView.alignment = .fill
        socialMediaIconsStackView.distribution = .fillEqually
        socialMediaIconsStackView.spacing = 23
        socialMediaIconsStackView.backgroundColor = .clear
    }
    
    // MARK: - Navigation
    func navigateToHomePage() {
        let homePage = HomePage() //creating object from the HomePage class
        self.navigationController?.pushViewController(homePage, animated: true)
    }
    
}
