//
//  DetailPageURLView.swift
//  News App Testing
//
//  Created by Sathriyan on 09/06/21.
//

import SwiftUI

struct DetailPageURLView: View {
    
    let url : String?
    
    var body: some View {
        DetailPageWebView(urlString: url)
    }
}

struct HomePageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPageURLView(url: "www.google.co.in")
    }
}
