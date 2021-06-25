//
//  ImagePicker.swift
//  Instafilter
//
//  Created by Arkasha Zuev on 25.06.2021.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
//    typealias UIViewControllerType = UIImagePickerController
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
}
