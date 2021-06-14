//
//  UrlImageModel.swift
//  News App Testing
//
//  Created by Sathriyan on 06/06/21.
//

import Foundation
import SwiftUI

class UrlImageModel : ObservableObject {
    
    @Published var image : UIImage?
    
    var urlString : String?
    
    init(urlString : String?) {
        self.urlString = urlString
        
        loadImage()
    }
    
    func loadImage() {
        
        loadImageFromUrl()
    }
    
    func loadImageFromUrl() {
        
        guard let urlString = urlString else {
            return
        }
        
        guard let url = URL(string: urlString) else {return}
        let task = URLSession.shared.dataTask(with: url, completionHandler: getImageFromResponse(data:response:error:))
        task.resume()
        
    }
    
    func getImageFromResponse(data: Data?, response: URLResponse?, error: Error?) {
        
        guard error == nil else {
            print("Error: \(error!)")
            return
        }
        
        guard let safeData = data else {
            print("No data is received")
            return
        }
        
        DispatchQueue.main.async {
            
            guard let loadedImage = UIImage(data: safeData) else {
                return
            }
            
            self.image = loadedImage
        }
    }
}

