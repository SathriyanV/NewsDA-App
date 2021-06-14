//
//  NewsViewModel.swift
//  News App Testing
//
//  Created by Sathriyan on 06/06/21.
//

import SwiftUI

class NewsViewModel: ObservableObject {
    
    @Published var newsData = [NewsDetails]()
    
    @Published var news : [BookmarkNewsData] = [BookmarkNewsData]()
    
    @Published var isLoading : Bool = false
    
    let coreDM = CoreDataManager()
    
    
    func startLoadingScreen() {
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.75) {
            
            self.isLoading = false
        }
    }
    
    func fetchSavedNews() {
        
        news = coreDM.getAllNews()
    }
    
    func saveNewsOffline(title : String, description : String, image : String, url : String, timeAt : String) {
        
        coreDM.save(title: title, description: description, image: image, url: url, timeAt: timeAt)
    }
    
    func deleteNewsData(news : BookmarkNewsData) {
        coreDM.deleteNews(news: news)
    }
    
    func loadHomePageData(){
        
        if let url = URL(string: API.getUrlIndiaHeadlines()) {
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error == nil {
                    
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        
                        
                        do {
                            let results = try decoder.decode(NewsData.self, from : safeData)
                            
                            DispatchQueue.main.async {
                                self.newsData = results.articles
                            }
                        }catch {
                            print(error)
                        }
                        
                    }
                }
            }
            task.resume()
        }
        
    }
    
    // India headlines categories
    
    func LoadBusinessCategoryData(){
        
        if let url = URL(string: API.getUrlIndiaHeadlinesBusiness()) {
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error == nil {
                    
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        
                        
                        do {
                            let results = try decoder.decode(NewsData.self, from : safeData)
                            
                            
                            DispatchQueue.main.async {
                                self.newsData = results.articles
                            }
                        }catch {
                            print(error)
                        }
                        
                    }
                }
            }
            task.resume()
        }
        
    }
    
    func LoadEntertainmentCategoryData(){
        
        if let url = URL(string: API.getUrlIndiaHeadlinesEntertainment()) {
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error == nil {
                    
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        
                        
                        do {
                            let results = try decoder.decode(NewsData.self, from : safeData)
                            
                            
                            DispatchQueue.main.async {
                                self.newsData = results.articles
                            }
                        }catch {
                            print(error)
                        }
                        
                    }
                }
            }
            task.resume()
        }
        
    }
    
    func LoadHealthCategoryData(){
        
        if let url = URL(string: API.getUrlIndiaHeadlinesHealth()) {
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error == nil {
                    
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        
                        
                        do {
                            let results = try decoder.decode(NewsData.self, from : safeData)
                            
                            
                            DispatchQueue.main.async {
                                self.newsData = results.articles
                            }
                        }catch {
                            print(error)
                        }
                        
                    }
                }
            }
            task.resume()
        }
        
    }
    
    func LoadScienceCategoryData(){
        
        if let url = URL(string: API.getUrlIndiaHeadlinesScience()) {
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error == nil {
                    
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        
                        
                        do {
                            let results = try decoder.decode(NewsData.self, from : safeData)
                            
                            
                            DispatchQueue.main.async {
                                self.newsData = results.articles
                            }
                        }catch {
                            print(error)
                        }
                        
                    }
                }
            }
            task.resume()
        }
        
    }
    
    func LoadSportsCategoryData(){
        
        if let url = URL(string: API.getUrlIndiaHeadlinesSports()) {
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error == nil {
                    
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        
                        
                        do {
                            let results = try decoder.decode(NewsData.self, from : safeData)
                            
                            
                            DispatchQueue.main.async {
                                self.newsData = results.articles
                            }
                        }catch {
                            print(error)
                        }
                        
                    }
                }
            }
            task.resume()
        }
        
    }
    
    func LoadTechnologyCategoryData(){
        
        if let url = URL(string: API.getUrlIndiaHeadlinesTechnology()) {
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error == nil {
                    
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        
                        
                        do {
                            let results = try decoder.decode(NewsData.self, from : safeData)
                            
                            
                            DispatchQueue.main.async {
                                self.newsData = results.articles
                            }
                        }catch {
                            print(error)
                        }
                        
                    }
                }
            }
            task.resume()
        }
        
    }
    
    func LoadGeneralCategoryData(){
        
        if let url = URL(string: API.getUrlIndiaHeadlinesGeneral()) {
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error == nil {
                    
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        
                        
                        do {
                            let results = try decoder.decode(NewsData.self, from : safeData)
                            
                            
                            DispatchQueue.main.async {
                                self.newsData = results.articles
                            }
                        }catch {
                            print(error)
                        }
                        
                    }
                }
            }
            task.resume()
        }
        
    }
    
    // Search View news Function
    
    func LoadSearchViewNewsData(searchTopic : String){
        
        if let url = URL(string: API.getSearchViewNewsUrl(topic: searchTopic)) {
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error == nil {
                    
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        
                        print(safeData)
                        
                        do {
                            let results = try decoder.decode(NewsData.self, from : safeData)
                            
                            
                            DispatchQueue.main.async {
                                self.newsData = results.articles
                            }
                        }catch {
                            print(error)
                        }
                        
                    }
                }
            }
            task.resume()
        }
        
    }
    
    func displayNewsDetailView(title : String, description : String, url : String) -> some View {
        
        return VStack {
            
            VStack {
                Text(title)
                    .font(Font.system(size: 20))
                    .fontWeight(.bold)
                    .frame(maxWidth : .infinity , alignment : .leading)
                    .padding(.top, 5)
                    .padding(.bottom, 10)
                    .padding(.horizontal, 18)
                    .lineSpacing(5)
                
                ScrollView(showsIndicators: false) {
                    Text(description)
                        .font(Font.system(size: 18))
                        .frame(maxWidth : .infinity , alignment : .leading)
                        .padding(.top, 5)
                        .padding(.bottom, 10)
                        .padding(.horizontal, 20)
                        .lineSpacing(5)
                }
                
                Spacer()
            }

            Spacer()
            
                    VStack(spacing : 5){
                        Text("More information about the news...")
                            .foregroundColor(.white)
                            .font(.title3)
                            .fontWeight(.bold)
                            .frame(maxWidth : .infinity, alignment : .leading)
                            .padding(.horizontal)
                            .padding(.top, 20)
                        
                        
                        NavigationLink(
                            destination: DetailPageURLView(url: url),
                            label: {
                                
                        Text("click here to read about it")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .font(.subheadline)
                            
                            .frame(maxWidth : .infinity, alignment : .leading)
                            .padding(.horizontal)
                            .padding(.bottom, 20)
                        
                    })
                        
                    }
                    .background(Color(hue: 1.0, saturation: 0.006, brightness: 0.518))
                
            
        }
    }
}

class DateTimeDisplay: ObservableObject {
    
    
    func DateTimePrint(fullString : String) -> String {
        
        let fullName : String = fullString
        let fullNameArr = fullName.components(separatedBy: "T")
        
        let name    = fullNameArr[0]
        let surname = fullNameArr[1]
        let timeArr = surname.components(separatedBy: "Z")
        
        let time = timeArr[0]
        
        let finalDateTime = "\(name)   \(time)"
        return UTCToLocal(UTCDateString: finalDateTime)
    }
    
    func UTCToLocal(UTCDateString: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss" //Input Format
        dateFormatter.timeZone = NSTimeZone(name: "UTC") as TimeZone?
        let UTCDate = dateFormatter.date(from: UTCDateString)
        dateFormatter.dateFormat = "dd-MM-yyyy   hh:mm a" // Output Format
        dateFormatter.timeZone = TimeZone.current
        let UTCToCurrentFormat = dateFormatter.string(from: UTCDate!)
        return UTCToCurrentFormat
    }
}
