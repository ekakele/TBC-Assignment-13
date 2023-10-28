//
//  ColorPalettePage.swift
//  Assignment-13
//
//  Created by Eka Kelenjeridze on 27.10.23.
//

import UIKit

final class ColorPalettePage: UIViewController {
    
    //MARK: - constants & variables
    let changeHomeButtonsColors = UILabel()
    let changeHomeBackgroundColor = UILabel()
    
    let firstColorPaletteStackView = UIStackView()
    let secondColorPaletteStackView = UIStackView()
    
    weak var delegate: PageDelegate?
    
    let sunflowerColorButton = UIButton()
    
    
    let carrotColorButton: UIButton =  {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.backgroundColor = UIColor(red: 0.90, green: 0.49, blue: 0.13, alpha: 1.00)
        return button
    }()
    
    let alizarinColorButton: UIButton =  {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.backgroundColor = UIColor(red: 0.91, green: 0.30, blue: 0.24, alpha: 1.00)
        return button
    }()
    
    let orangeColorButton: UIButton =  {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.backgroundColor = UIColor(red: 0.95, green: 0.61, blue: 0.07, alpha: 1.00)
        return button
    }()
    
    let pumpkinColorButton: UIButton =  {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.backgroundColor = UIColor(red: 0.83, green: 0.33, blue: 0.00, alpha: 1.00)
        return button
    }()
    
    let pomegranateColorButton: UIButton =  {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.backgroundColor = UIColor(red: 0.75, green: 0.22, blue: 0.17, alpha: 1.00)
        return button
    }()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupChangeHomeButtonsColors()
        setupChangeHomeBackgroundColor()
        setupFirstColorPaletteStackView()
        //        setupSecondColorPaletteStackView()
        setupButton()
    }
    
    
    func setupChangeHomeButtonsColors() {
        changeHomeButtonsColors.text = "Change Home Buttons Background Colors"
        changeHomeButtonsColors.frame = CGRect(x: 68, y: 50, width: 220, height: 45)
        changeHomeButtonsColors.numberOfLines = 2
        changeHomeButtonsColors.backgroundColor = UIColor.clear
        changeHomeButtonsColors.textAlignment = .center
        changeHomeButtonsColors.textColor = .black
        changeHomeButtonsColors.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        
        view.addSubview(changeHomeButtonsColors)
    }
    
    func setupChangeHomeBackgroundColor() {
        changeHomeBackgroundColor.text = "Change Home Background Color"
        changeHomeBackgroundColor.frame = CGRect(x: 68, y: 400, width: 220, height: 45)
        changeHomeBackgroundColor.numberOfLines = 2
        changeHomeBackgroundColor.backgroundColor = UIColor.clear
        changeHomeBackgroundColor.textAlignment = .center
        changeHomeBackgroundColor.textColor = .black
        changeHomeBackgroundColor.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        
        view.addSubview(changeHomeBackgroundColor)
    }
    
    func setupFirstColorPaletteStackView() {
        
        view.addSubview(firstColorPaletteStackView)
        
        firstColorPaletteStackView.translatesAutoresizingMaskIntoConstraints = false
        firstColorPaletteStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstColorPaletteStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        firstColorPaletteStackView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        firstColorPaletteStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        
        
        firstColorPaletteStackView.addArrangedSubview(sunflowerColorButton)
        firstColorPaletteStackView.addArrangedSubview(carrotColorButton)
        firstColorPaletteStackView.addArrangedSubview(alizarinColorButton)
        firstColorPaletteStackView.addArrangedSubview(orangeColorButton)
        firstColorPaletteStackView.addArrangedSubview(pumpkinColorButton)
        firstColorPaletteStackView.addArrangedSubview(pomegranateColorButton)
        
        firstColorPaletteStackView.axis = .horizontal
        firstColorPaletteStackView.alignment = .center
        firstColorPaletteStackView.alignment = .fill
        firstColorPaletteStackView.distribution = .fillEqually
        firstColorPaletteStackView.spacing = 4
        firstColorPaletteStackView.backgroundColor = .clear
    }
    
    func setupButton() {
        sunflowerColorButton.setTitle("", for: .normal)
        let buttonColor = sunflowerColorButton.backgroundColor
        view.addSubview(sunflowerColorButton)
        
        sunflowerColorButton.addAction(UIAction(handler: { [weak self] action in
            self?.delegate?.changeBackgroundColor(color: buttonColor!)
            print("button tapped")
            //            self?.dismiss(animated: true, completion: nil)
        }), for: .touchUpInside)
    }
    
}

