//
//  UrlImageView.swift
//  News App Testing
//
//  Created by Sathriyan on 09/06/21.
//

import SwiftUI


struct UrlImageViewDetailView: View {
    
    @ObservedObject var urlImageModel : UrlImageModel
    
    static var defaultImage = UIImage(named: "NewsImage")
    
    init(urlString : String?) {
        urlImageModel = UrlImageModel(urlString: urlString)
    }
    
    var body: some View {
        Image(uiImage: urlImageModel.image ?? UrlImageViewDetailView.defaultImage!)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.horizontal, 15)
            .padding(.top, 15)
    }
}

struct UrlImageViewDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UrlImageViewDetailView(urlString: nil)
    }
}
