//
//  HomePage.swift
//  Assignment-13
//
//  Created by Eka Kelenjeridze on 27.10.23.
//

import UIKit

//MARK: - protocols
protocol PageDelegate: AnyObject {
    func changeBackgroundColor(color: UIColor)
}

final class HomePage: UIViewController, PageDelegate {
    
    func changeBackgroundColor(color: UIColor) {
        view.backgroundColor = color
    }
    
    //MARK: - constants & variables
    let PresentColorPalettePageButton = UIButton()
    let PushColorPalettePageButton = UIButton()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupPresentColorPalettePageButton()
        setupPushColorPalettePageButton()
        
    }
    
    //MARK: Setup UI elements
    func setupPresentColorPalettePageButton() {
        PresentColorPalettePageButton.setTitle("Present Color Palette Page", for: .normal)
        PresentColorPalettePageButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        PresentColorPalettePageButton.frame = CGRect(x: 68, y: 330, width: 280, height: 45)
        PresentColorPalettePageButton.backgroundColor = UIColor(red: 0.133, green: 0.341, blue: 0.478, alpha: 0.85)
        PresentColorPalettePageButton.layer.cornerRadius = 14
        
        view.addSubview(PresentColorPalettePageButton)
        
        PresentColorPalettePageButton.addAction(UIAction(handler: { [weak self] action in
            self?.navigateToPresentColorPalettePage()
            print("present button tapped")
        }), for: .touchUpInside)
    }
    
    func setupPushColorPalettePageButton() {
        PushColorPalettePageButton.setTitle("Push Color Palette Page", for: .normal)
        PushColorPalettePageButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        PushColorPalettePageButton.frame = CGRect(x: 68, y: 430, width: 280, height: 45)
        PushColorPalettePageButton.backgroundColor = UIColor(red: 0.133, green: 0.341, blue: 0.478, alpha: 0.85)
        PushColorPalettePageButton.layer.cornerRadius = 14
        
        view.addSubview(PushColorPalettePageButton)
        
        PushColorPalettePageButton.addAction(UIAction(handler: { [weak self] action in
            self?.navigateToPushColorPalettePage()
            print("push button tapped")
        }), for: .touchUpInside)
    }
    
    // MARK: - Navigation
    func navigateToPresentColorPalettePage() {
        let colorPalettePage = ColorPalettePage() //creating object from the HomePage class
        present(colorPalettePage, animated: true) //making the HomePage appear on the screen
    }
    
    func navigateToPushColorPalettePage() {
        let colorPalettePage = ColorPalettePage()
        colorPalettePage.delegate = self
        self.navigationController?.pushViewController(colorPalettePage, animated: true)
    }
    
    
}
