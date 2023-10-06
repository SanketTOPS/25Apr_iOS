//
//  ViewController.swift
//  SocialAuth-GMAILApp
//
//  Created by MAC03 on 06/10/23.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
           if error != nil || user == nil {
             print("Your account is already login!")
            
           } else {
             // Show the app's signed-in state.
            let homeVC=self.storyboard?.instantiateViewController(identifier: "homeVC") as! HomeViewController
            self.present(homeVC, animated: true, completion: nil)
           }
         }
    }
    
    @IBAction func btn_gmailsignin(_ sender: Any)
    {
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { signInResult, error in
           guard error == nil else { return }
            let user = signInResult!.user
            let emailAddress = user.profile?.email
            let fullName = user.profile?.name
            let givenName = user.profile?.givenName
            let familyName = user.profile?.familyName
            let profilePicUrl = user.profile?.imageURL(withDimension: 320)
            
            print("User:\(user)")
            print("EmailAddress:\(emailAddress!)")
            print("Fullname:\(fullName!)")
            print("GivenName:\(givenName!)")
            print("FamilyName:\(familyName!)")
            print("ProfilePhoto:\(profilePicUrl!)")
        

            let homeVC=self.storyboard?.instantiateViewController(identifier: "homeVC") as! HomeViewController
            self.present(homeVC, animated: true, completion: nil)
           
         }
    }
    

}

