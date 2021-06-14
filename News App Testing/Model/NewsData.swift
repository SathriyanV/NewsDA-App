//
//  NewsData.swift
//  News App Testing
//
//  Created by Sathriyan on 06/06/21.
//

import Foundation

// API data model

struct NewsData: Codable, Identifiable{
    
    var articles : [NewsDetails]
    
}

extension NewsData {
    
    var id : UUID {
        return UUID()
    }
}

struct NewsDetails: Codable , Identifiable{
    
    var source : NewsSubDetails
    var title : String
    var description : String?
    var url : String
    var urlToImage : String?
    var publishedAt : String
    var content : String?
}

extension NewsDetails {
    
    var id : UUID {
        return UUID()
    }
}

struct NewsSubDetails: Codable {
    
    var name : String
}



