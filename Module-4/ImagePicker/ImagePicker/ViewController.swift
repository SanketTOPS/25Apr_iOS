//
//  ViewController.swift
//  ImagePicker
//
//  Created by MAC03 on 27/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myimg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_photo(_ sender: Any)
    {
        let photo=UIImagePickerController()
        photo.delegate=self
        photo.sourceType = .camera
        present(photo, animated: true, completion: nil)
    }
}
extension ViewController:UIImagePickerControllerDelegate,UINavigationControllerDelegate
{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        let img=info[.originalImage] as! UIImage
        myimg.image=img
        dismiss(animated: true, completion: nil)
    }
}

