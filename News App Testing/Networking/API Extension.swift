//
//  API Extension.swift
//  News App Testing
//
//  Created by Sathriyan on 06/06/21.
//

import Foundation

extension API {
    
    static let baseUrl = "https://newsapi.org/v2/"
    
    static func getUrlIndiaHeadlines() -> String{
        
        return ("\(baseUrl)top-headlines?country=in&pageSize=100&apiKey=\(apiKey)")
    }
    
    
    // Top headlines Indian categories
    
    static func getUrlIndiaHeadlinesBusiness() -> String {
        
        return ("\(baseUrl)top-headlines?country=in&category=business&pageSize=100&apiKey=\(apiKey)")
    }
    
    static func getUrlIndiaHeadlinesEntertainment() -> String {
        
        return ("\(baseUrl)top-headlines?country=in&category=entertainment&pageSize=100&apiKey=\(apiKey)")
    }
    
    static func getUrlIndiaHeadlinesHealth() -> String {
        
        return ("\(baseUrl)top-headlines?country=in&category=health&pageSize=100&apiKey=\(apiKey)")
    }
    
    static func getUrlIndiaHeadlinesScience() -> String {
        
        return ("\(baseUrl)top-headlines?country=in&category=science&pageSize=100&apiKey=\(apiKey)")
    }
    
    static func getUrlIndiaHeadlinesSports() -> String {
        
        return ("\(baseUrl)top-headlines?country=in&category=sports&pageSize=100&apiKey=\(apiKey)")
    }
    
    static func getUrlIndiaHeadlinesTechnology() -> String {
        
        return ("\(baseUrl)top-headlines?country=in&category=technology&pageSize=100&apiKey=\(apiKey)")
    }
    
    static func getUrlIndiaHeadlinesGeneral() -> String {
        
        return ("\(baseUrl)top-headlines?country=in&category=general&pageSize=100&apiKey=\(apiKey)")
    }
      
    
    // Search News url
    
    
    static func getSearchViewNewsUrl(topic: String) -> String{
        
        return ("\(baseUrl)everything?q=\(topic)&pageSize=100&sortBy=relevancy&apiKey=\(apiKey)")
    }
    
}
