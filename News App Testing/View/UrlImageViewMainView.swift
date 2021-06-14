//
//  UrlImageViewMainView.swift
//  News App Testing
//
//  Created by Sathriyan on 09/06/21.
//

import SwiftUI

struct UrlImageViewMainView: View {
    
    @ObservedObject var urlImageModel : UrlImageModel
    
    static var defaultImage = UIImage(named: "NewsImage")
    
    init(urlString : String?) {
        urlImageModel = UrlImageModel(urlString: urlString)
    }
    
    var body: some View {
        Image(uiImage: urlImageModel.image ?? UrlImageViewMainView.defaultImage!)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 110, height: 110)
            .cornerRadius(5)
            .padding(.vertical, 10)
            .padding(.trailing, 15)
            .shadow(radius: 1)
    }
}

struct UrlImageViewMainView_Previews: PreviewProvider {
    static var previews: some View {
        UrlImageViewMainView(urlString: nil)
    }
}
