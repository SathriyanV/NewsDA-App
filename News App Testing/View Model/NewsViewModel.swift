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
    
    @Published var searchValue : String = "Apple"
    
    let coreDM = CoreDataManager()
    
   
    // MARK:- Progress view function
    
    func startLoadingScreen() {
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.75) {
            
            self.isLoading = false
        }
    }
 
    // MARK:- Core Data CRUD section
    
    func fetchSavedNews() {
        
        news = coreDM.getAllNews()
    }
    
    func saveNewsOffline(title : String, description : String, image : String, url : String, timeAt : String) {
        
        coreDM.save(title: title, description: description, image: image, url: url, timeAt: timeAt)
    }
    
    func deleteNewsData(news : BookmarkNewsData) {
        coreDM.deleteNews(news: news)
    }
    
    
    // MARK:- Share sheet function
    
    func shareNews(news : String) {
        
        let shareView = UIActivityViewController(activityItems: [news], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(shareView, animated: true, completion: nil)
        
    }
    
    // MARK:- Home page load section
    
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
    
    // MARK:- India Business category
    
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
    
    // MARK:- India Entertainment category
    
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
    
    // MARK:- India Health category
    
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
    
    // MARK:- India Science category
    
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
    
    // MARK:- India Sports category
    
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
    
    // MARK:- India Technology category
    
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
    
    // MARK:- India General category
    
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
    
    // MARK:- Search View news Function
    
    func LoadSearchViewNewsData(searchTerm : String){
        
        if let url = URL(string: API.getSearchViewNewsUrl(topic: searchTerm)) {
            
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
    
    // MARK:- Source Detail news Function
    
    // ABC News
    
    func LoadABCNewsDetailData(){
        
        if let url = URL(string: API.getABCNewsUrl()) {
            
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
    
    // AlJazeera News
    
    func LoadAlJazeeraNewsDetailData(){
        
        if let url = URL(string: API.getAlJazeeraNewsUrl()) {
            
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
    
    // associated-press News
    
    func LoadAssociatedPressDetailData(){
        
        if let url = URL(string: API.getAssociatedPressNewsUrl()) {
            
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
    
    // BBC News
    
    func LoadBBCNewsDetailData(){
        
        if let url = URL(string: API.getBBCNewsUrl()) {
            
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
    
    // Bloomberg News
    
    func LoadBloombergNewsDetailData(){
        
        if let url = URL(string: API.getBloombergNewsUrl()) {
            
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
    
    // BusinessInsider News
    
    func LoadBusinessInsiderDetailData(){
        
        if let url = URL(string: API.getBusinessInsiderNewsUrl()) {
            
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
    
    // CNN News
    
    func LoadCNNNewsDetailData(){
        
        if let url = URL(string: API.getCNNNewsUrl()) {
            
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
    
    // Engadget News
    
    func LoadEngadgetNewsDetailData(){
        
        if let url = URL(string: API.getEngadgetNewsUrl()) {
            
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
    
    // ESPN News
    
    func LoadESPNNewsDetailData(){
        
        if let url = URL(string: API.getESPNNewsUrl()) { 
            
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
    
    // Fortune News
    
    func LoadFortuneNewsDetailData(){
        
        if let url = URL(string: API.getFortuneNewsUrl()) {
            
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
    
    // Reuters News
    
    func LoadReutersNewsDetailData(){
        
        if let url = URL(string: API.getReutersNewsUrl()) {
            
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
    
    // Mashable News
    
    func LoadMashableNewsDetailData(){
        
        if let url = URL(string: API.getMashableNewsUrl()) {
            
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
    
    // TechCrunch News
    
    func LoadTechCrunchNewsDetailData(){
        
        if let url = URL(string: API.getTechCrunchNewsUrl()) {
            
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
    
    // TechRadar News
    
    func LoadTechRadarNewsDetailData(){
        
        if let url = URL(string: API.getTechRadarNewsUrl()) {
            
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
    
    // TheHindu News
    
    func LoadTheHinduNewsDetailData(){
        
        if let url = URL(string: API.getTheHinduNewsUrl()) {
            
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
    
    // TimesOfIndia News
    
    func LoadTimesOfIndiaNewsDetailData(){
        
        if let url = URL(string: API.getTheTimesOfIndiaNewsUrl()) {
            
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
    
    // Theverge News
    
    func LoadThevergeNewsDetailData(){
        
        if let url = URL(string: API.getThevergeNewsUrl()) {
            
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
    
    // Wired News
    
    func LoadWiredNewsDetailData(){
        
        if let url = URL(string: API.getWiredNewsUrl()) {
            
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
    
    // MARK:- News Detail view format section
    
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

// MARK:- Time and Date format change section

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
        guard let UTCDate = dateFormatter.date(from: UTCDateString) else { return "No information" }
        dateFormatter.dateFormat = "dd-MM-yyyy   hh:mm a" // Output Format
        dateFormatter.timeZone = TimeZone.current
        let UTCToCurrentFormat = dateFormatter.string(from: UTCDate)
        return UTCToCurrentFormat
    }
}
