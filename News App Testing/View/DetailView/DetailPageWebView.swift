//
//  DetailPageWebView.swift
//  News App Testing
//
//  Created by Sathriyan on 09/06/21.
//

import Foundation
import WebKit
import SwiftUI

struct DetailPageWebView : UIViewRepresentable{
    
    let urlString : String?
    
    func makeUIView(context: Context) -> DetailPageWebView.UIViewType {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
