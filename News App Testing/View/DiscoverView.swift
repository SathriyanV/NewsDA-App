//
//  ExploreView.swift
//  News App Testing
//
//  Created by Sathriyan on 06/06/21.
//

import SwiftUI

struct DiscoverView: View {
    
    @ObservedObject var newsViewModel = NewsViewModel()
    
    @ObservedObject var dateTimeDisplay = DateTimeDisplay()
    
    @State private var noValue = false
    
    @State var searchTerm : String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                
                    VStack (spacing : 5){
                        
                        Text("Discover")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.horizontal, 18)
                            .padding(.top, 50)
                            .frame(maxWidth: .infinity, alignment : .leading)
                        
                        Text("News from all over the world")
                            .font(Font.system(size: 14))
                            .padding(.horizontal, 19)
                            .frame(maxWidth: .infinity, alignment : .leading)
                        
                    HStack{
                            
                        TextField("Enter search topic", text : $searchTerm)
                            .font(.body)
                            .padding(.leading, 15)
                            .frame(height: 45)
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(.vertical, 10)
                            .padding(.leading)
                            .shadow(radius: 1.5)
                        
                        Button(action : {
                            
                            if searchTerm.count > 0 {
                                
                                newsViewModel.LoadSearchViewNewsData(searchTopic : searchTerm)
                            }else {
                                noValue = true
                            }
                            
                            
                        },
                               
                               label : {
                                VStack{
                                    Image(systemName: "magnifyingglass")
                                }
                                .frame(width: 46, height: 46)
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.trailing, 15)
                                .padding(.leading, 5)
                                .shadow(radius: 1.5)
   
                        } )
                        .alert(isPresented: $noValue,
                               content: {
                                Alert(title: Text("Warning!"), message: Text("Please Enter a item to search"), dismissButton: .default(Text("Got it!")))
                               })
                    }
                    
                Divider()
                    .padding(.top, 5)
                    .padding(.bottom, 10)
                       
        
                ScrollView(showsIndicators: false){
                    
                    ForEach(newsViewModel.newsData) {item in
                        NavigationLink(
                            destination:
                                VStack {
                                    
                                    UrlImageViewDetailView(urlString: item.urlToImage)
                                        
                                    newsViewModel.displayNewsDetailView(title: item.title, description: item.description ?? "No description is available", url: item.url)
                                }
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                                .navigationBarHidden(false)
                                .navigationBarTitleDisplayMode(.inline)
                                
                                .toolbar(content: {
                                    
                                    ToolbarItemGroup(placement : .navigationBarTrailing) {
                                        Button(action: {
                                            
                                            newsViewModel.saveNewsOffline(title: item.title, description: item.description ?? "No description Available", image: item.urlToImage ?? "no url value", url: item.url, timeAt: item.publishedAt)
 
                                        }, label: {
                                            Image(systemName: "bookmark")
                                        })
                                        
                                        Spacer()
                                        
                                        Button(action: {
                                            
                                            newsViewModel.saveNewsOffline(title: item.title, description: item.description ?? "No description Available", image: item.urlToImage ?? "no url value", url: item.url, timeAt: item.publishedAt)
                                            
                                        }, label: {
                                            Image(systemName: "square.and.arrow.up")
                                        })
                                        
                                    }
                                }),
                            
                            label: {
                                
                                    HStack(alignment : .center){
                                        VStack(alignment : .leading, spacing : 0){
                                            Text(item.title)
                                                .foregroundColor(.black)
                                                .font(Font.system(size: 16))
                                                .fontWeight(.semibold)
                                                .lineSpacing(2.5)
                                                .frame(maxWidth : .infinity, maxHeight : .infinity, alignment : .leading)
                                                .padding(.vertical, 15)
                                                .padding(.leading, 15)
                                            
                                            HStack{
                                                
                                                Image(systemName : "calendar")
                                                    .resizable()
                                                    .foregroundColor(.black)
                                                    .frame(width : 11, height : 11)
                                                
                                                Spacer()
                                                    .frame(width : 8)
                                                
                                                Text(dateTimeDisplay.DateTimePrint(fullString : item.publishedAt))
                                                    .font(.footnote)
                                                    .foregroundColor(.black)
                                            }
                                            .padding(.horizontal)
                                            .padding(.bottom)
                                        }
                                        UrlImageViewMainView(urlString: item.urlToImage)
                                    }
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 1.5)
                                    .padding()
                                    .padding(.vertical, -10)
    
                            })
                        
                    }
                    .navigationBarHidden(true)
                    .navigationBarTitle(Text("Headlines Today"))
                }
                        
            }
            
        }
        .background(Color(hue: 0.509, saturation: 0.0, brightness: 0.96))
        .edgesIgnoringSafeArea(.top)
            
    }
}
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}

