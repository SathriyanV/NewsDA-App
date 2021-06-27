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
        
        return ("\(baseUrl)top-headlines?country=in&pageSize=25&apiKey=\(apiKey)")
    }
    
    
    // MARK:-  Top headlines Indian categories
    
    
    static func getUrlIndiaHeadlinesBusiness() -> String {
        
        return ("\(baseUrl)top-headlines?country=in&category=business&pageSize=25&apiKey=\(apiKey)")
    }
    
    static func getUrlIndiaHeadlinesEntertainment() -> String {
        
        return ("\(baseUrl)top-headlines?country=in&category=entertainment&pageSize=25&apiKey=\(apiKey)")
    }
    
    static func getUrlIndiaHeadlinesHealth() -> String {
        
        return ("\(baseUrl)top-headlines?country=in&category=health&pageSize=25&apiKey=\(apiKey)")
    }
    
    static func getUrlIndiaHeadlinesScience() -> String {
        
        return ("\(baseUrl)top-headlines?country=in&category=science&pageSize=25&apiKey=\(apiKey)")
    }
    
    static func getUrlIndiaHeadlinesSports() -> String {
        
        return ("\(baseUrl)top-headlines?country=in&category=sports&pageSize=25&apiKey=\(apiKey)")
    }
    
    static func getUrlIndiaHeadlinesTechnology() -> String {
        
        return ("\(baseUrl)top-headlines?country=in&category=technology&pageSize=25&apiKey=\(apiKey)")
    }
    
    static func getUrlIndiaHeadlinesGeneral() -> String {
        
        return ("\(baseUrl)top-headlines?country=in&category=general&pageSize=25&apiKey=\(apiKey)")
    }
      
    
    // MARK:- Search News url
    
    
    static func getSearchViewNewsUrl(topic: String) -> String{
        
        return ("\(baseUrl)everything?q=\(topic)&pageSize=25&sortBy=relevancy&apiKey=\(apiKey)")
    }
    
    
    // MARK:- Source News url
    
    // ABC News
    
    static func getABCNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=abc-news&apiKey=\(apiKey)")
    }
    
    // AlJazeera News
    
    static func getAlJazeeraNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=al-jazeera-english&apiKey=\(apiKey)")
    }
    
    // associated-press News
    
    static func getAssociatedPressNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=associated-press&apiKey=\(apiKey)")
    }
    
    // BBC News
    
    static func getBBCNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=bbc-news&apiKey=\(apiKey)")
    }
    
    // bloomberg News
    
    static func getBloombergNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=bloomberg&apiKey=\(apiKey)")
    }
    
    // BusinessInsider News
    
    static func getBusinessInsiderNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=business-insider&apiKey=\(apiKey)")
    }
    
    // cnn News
    
    static func getCNNNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=cnn&apiKey=\(apiKey)")
    }
    
    // engadget News
    
    static func getEngadgetNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=engadget&apiKey=\(apiKey)")
    }
    
    // espn News
    
    static func getESPNNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=espn&apiKey=\(apiKey)")
    }
    
    // fortune News
    
    static func getFortuneNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=fortune&apiKey=\(apiKey)")
    }
    
    // reuters News
    
    static func getReutersNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=reuters&apiKey=\(apiKey)")
    }
    
    // mashable News
    
    static func getMashableNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=mashable&apiKey=\(apiKey)")
    }
    
    // techcrunch News
    
    static func getTechCrunchNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=techcrunch&apiKey=\(apiKey)")
    }
    
    // techradar News
    
    static func getTechRadarNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=techradar&apiKey=\(apiKey)")
    }
    
    // hindu News
    
    static func getTheHinduNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=the-hindu&apiKey=\(apiKey)")
    }
    
    // TimesOfIndia News
    
    static func getTheTimesOfIndiaNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=the-times-of-india&apiKey=\(apiKey)")
    }
    
    // verge News
    
    static func getThevergeNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=the-verge&apiKey=\(apiKey)")
    }
    
    // wired News
    
    static func getWiredNewsUrl() -> String {
        
        return ("\(baseUrl)top-headlines?sources=wired&apiKey=\(apiKey)")
    }
    
}
