//
//  BookmarkView.swift
//  News App Testing
//
//  Created by Sathriyan on 06/06/21.
//

import SwiftUI

struct BookmarkView: View {
    
    @ObservedObject var newsViewModel = NewsViewModel()
    
    @ObservedObject var dateTimeDisplay = DateTimeDisplay()
    
    var body: some View {
        
        NavigationView {
            
            List{
                
                ForEach(newsViewModel.news, id:\.self) { item in
                    
                    HStack (spacing: 2){
                        
                        UrlImageViewMainView(urlString: item.newsImage)
                        
                        VStack(spacing : 10){
                            
                            NavigationLink(
                                
                                destination: DetailPageURLView(url: item.newsUrl),
                                
                                label: {
                                    Text(item.newsTitle ?? "no title")
                                        .font(Font.system(size: 15.5))
                                        .fontWeight(.semibold)
                                        .lineSpacing(2)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.top, 10)
                                })
                                .padding(.trailing, 3)
                            
                            Text(dateTimeDisplay.DateTimePrint(fullString : item.publishedTime ?? "no time"))
                                .font(Font.system(size: 12))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 10)
                        }
                    }
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                .onDelete(perform: { indexSet in
                    indexSet.forEach{index in
                        let newsDelete = newsViewModel.news[index]
                        newsViewModel.deleteNewsData(news: newsDelete)
                        newsViewModel.fetchSavedNews()
                    }
                })
            }
            .onAppear(perform: {
                newsViewModel.fetchSavedNews()
            })
            .navigationTitle(Text("Bookmarked News"))
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct BookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkView()
    }
}
