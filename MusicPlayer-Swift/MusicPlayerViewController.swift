//
//  ViewController.swift
//  MusicPlayer-Swift
//
//  Created by Osmancan Akagündüz on 8.02.2024.
//

import UIKit

class MusicPlayerViewController: UIViewController {
    
    private let backgroundImage : UIImageView = UIImageView(image: UIImage(named: "blurImage"))
    
    private let musicImage : UIImageView = UIImageView(image: UIImage(named: "batıkGemi"))
    
    private let pageController : UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 2
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        
        return pageControl
    }()
    
    private let toolsStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        return stackView
        
    }()
    
    private let likeButton : UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName:"heart" ), for: .normal)
        button.tintColor = .white

        return button
    }()
    
    private let shareButton : UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName:"square.and.arrow.up" ), for: .normal)
        button.tintColor = .white

        return button
    }()
    
    private let editButton : UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName:"square.and.pencil" ), for: .normal)
        button.tintColor = .white
        return button
    }()
    
    private let slider : UISlider = {
       let slider = UISlider()
        slider.maximumValue = 100
        slider.minimumValue = 0
        slider.value = 30
        slider.translatesAutoresizingMaskIntoConstraints = false
        
        
        return slider
    }()
    
    private let playStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        
        return stackView
        
    }()
    
    private let backPlayButton : UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName:"backward.circle" ), for: .normal)
        button.tintColor = .white

        return button
    }()
    
    private let playButton : UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName:"arrowtriangle.forward.circle" ), for: .normal)
        button.tintColor = .white

        return button
    }()
    
    private let nextButton : UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName:"forward.circle" ), for: .normal)
        button.tintColor = .white

        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImage.frame = self.view.frame
        
        view.addSubview(backgroundImage)
        view.addSubview(musicImage)
        view.addSubview(pageController)
        view.addSubview(toolsStackView)
        view.addSubview(slider)
        view.addSubview(playStackView)
        
        toolsStackView.addArrangedSubview(likeButton)
        toolsStackView.addArrangedSubview(UIView())
        toolsStackView.addArrangedSubview(shareButton)
        toolsStackView.addArrangedSubview(UIView())
        toolsStackView.addArrangedSubview(editButton)

        playStackView.addArrangedSubview(backPlayButton)
        playStackView.addArrangedSubview(UIView())
        playStackView.addArrangedSubview(playButton)
        playStackView.addArrangedSubview(UIView())
        playStackView.addArrangedSubview(nextButton)

        
        setLayout()

    }
    
    func setLayout()  {
       
        buildMusicImage()
        
        buildPageController()
        
        buildToolStackView()
        
        buildSlider()
        
        buildPlayStackView()
    }


}


extension MusicPlayerViewController {
    
    
    func buildMusicImage()  {
        
        musicImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([musicImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
                                     musicImage.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor, constant: 30),
                                     musicImage.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor, constant: -30),
                                     musicImage.heightAnchor.constraint(equalToConstant: backgroundImage.frame.width - 80),
                                    
                                    ])
    }
    
    
    func buildPageController()  {
        NSLayoutConstraint.activate([
            pageController.topAnchor.constraint(equalTo: musicImage.bottomAnchor, constant: 20),            pageController.leadingAnchor.constraint(equalTo: musicImage.leadingAnchor),
            pageController.trailingAnchor.constraint(equalTo: musicImage.trailingAnchor),
            pageController.heightAnchor.constraint(equalToConstant: 30),
        ])
    }
    
    func buildToolStackView()  {
        
        
        NSLayoutConstraint.activate([
            toolsStackView.leadingAnchor.constraint(equalTo: musicImage.leadingAnchor),            toolsStackView.trailingAnchor.constraint(equalTo: musicImage.trailingAnchor),
            toolsStackView.topAnchor.constraint(equalTo: pageController.bottomAnchor,constant: 20),
            toolsStackView.heightAnchor.constraint(equalToConstant: 70),
            
        ])
        
    }
    
    func buildSlider()  {
        NSLayoutConstraint.activate([
            slider.topAnchor.constraint(equalTo: toolsStackView.bottomAnchor, constant: 10),
            slider.leadingAnchor.constraint(equalTo: toolsStackView.leadingAnchor,constant: 20),
            slider.trailingAnchor.constraint(equalTo: toolsStackView.trailingAnchor,constant: -20),
            slider.heightAnchor.constraint(equalToConstant: 40)
        
        ])
    }
    
    func buildPlayStackView()  {
        
        
        NSLayoutConstraint.activate([
            playStackView.leadingAnchor.constraint(equalTo: slider.leadingAnchor),            playStackView.trailingAnchor.constraint(equalTo: slider.trailingAnchor),
            playStackView.topAnchor.constraint(equalTo: slider.bottomAnchor,constant: 20),
            playStackView.heightAnchor.constraint(equalToConstant: 70),
            
        ])
        
    }
   
}

#Preview{
    MusicPlayerViewController()
}
