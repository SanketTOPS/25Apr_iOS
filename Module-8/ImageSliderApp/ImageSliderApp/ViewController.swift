//
//  ViewController.swift
//  ImageSliderApp
//
//  Created by MAC03 on 27/09/23.
//

import UIKit

class ViewController: UIViewController,KASlideShowDelegate {

    @IBOutlet weak var slideshow: KASlideShow!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slideshow.delegate = self
        slideshow.delay = 2 // Delay between transitions
        slideshow.transitionDuration = 0.5 // Transition duration
        slideshow.transitionType = KASlideShowTransitionType.slide // Choose a transition type (fade or slide)
        slideshow.imagesContentMode = .scaleAspectFit // Choose a content mode for images to display
        slideshow.addImages(fromResources: ["06.png","07.png","08.png","09.png"]) // Add images from resources
        //slideshow.add(KASlideShowGestureType.tap) // Gesture to go previous/next directly on the image (Tap or Swipe)
        slideshow.start()
    }


}

