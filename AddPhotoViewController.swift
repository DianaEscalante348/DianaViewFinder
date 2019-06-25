//
//  AddPhotoViewController.swift
//  DianaViewFinder
//
//  Created by Apple on 6/25/19.
//  Copyright © 2019 Diana Escalante. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()

    @IBOutlet weak var newImage: UIImageView!
    @IBOutlet weak var newCaption: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
    if let selectedImage =  info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
        newImage.image = selectedImage
        
    }
    imagePicker.dismiss(animated: true, completion: nil)
}
    
    @IBAction func saveTapped(_ sender: UIButton) {
        
    }
    
    
    @IBAction func photoLibraryTapped(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func cameraTapped(_ sender: UIButton) {
       imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
        
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

