//
//  UrlImageViewBookmarkView.swift
//  News App Testing
//
//  Created by Sathriyan on 14/06/21.
//

import SwiftUI

struct UrlImageViewBookmarkView: View {
    @ObservedObject var urlImageModel : UrlImageModel
    
    static var defaultImage = UIImage(named: "NewsImage")
    
    init(urlString : String?) {
        urlImageModel = UrlImageModel(urlString: urlString)
    }
    
    var body: some View {
        Image(uiImage: urlImageModel.image ?? UrlImageViewDetailView.defaultImage!)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.horizontal, 5)
            .padding(.top, 15)
    }
}

struct UrlImageViewBookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        UrlImageViewBookmarkView(urlString: nil)
    }
}
