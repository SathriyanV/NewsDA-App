//
//  TestView.swift
//  News App Testing
//
//  Created by Sathriyan on 05/06/21.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var newsViewModel = NewsViewModel()
    
    @ObservedObject var dateTimeDisplay = DateTimeDisplay()
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    Text("NewsDA")
                        .font(Font.system(size: 38))
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                        .padding(.horizontal, 16)
                        .padding(.top, 53)
                        .padding(.bottom, 5)
                        .frame(maxWidth: .infinity, alignment : .leading)
                }
                
                ScrollView(showsIndicators: false) {
                    
                    CategoryScrollView()
                    
                    Divider()
                    
                    ZStack {
                        ScrollView(showsIndicators: false){
                            Text("Headlines Today")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.horizontal, 18)
                                .padding(.top, 5)
                                .frame(maxWidth: .infinity, alignment : .leading)
                            
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
                                                    
                                                },
                                                label: {
                                                    Image(systemName: "bookmark")
                                                             
                                                })
                                                
                                                Spacer()
                                                
                                                Button(action: {}, label: {
                                                    Image(systemName: "square.and.arrow.up")
                                                })
                                            }
                                        }),
                                    
                                    label: {
                                        HStack(alignment : .center){
                                            LazyVStack(alignment : .leading, spacing : 0){
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
                        
                        if newsViewModel.isLoading {
                            
                            ProgressView()
                                .scaleEffect(2)
                                .padding(.top, 250)
                            
                        }
                    }
                }
                .onAppear(perform: {

                    newsViewModel.startLoadingScreen()
                    
                })
            }
            .background(Color(hue: 0.509, saturation: 0.0, brightness: 0.96))
            .edgesIgnoringSafeArea(.top)
            
            .onAppear(perform: {
                
                newsViewModel.loadHomePageData()
            })
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct CategoryScrollView: View {
    var body: some View {
        
        HStack {
            
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack{
                    
                    NavigationLink(
                        destination: BusinessView()
                            .navigationBarHidden(true),
                        label: {
                            Text("Business")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding(.horizontal, 20)
                                .frame(height : 50)
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.horizontal, 5)
                                .padding(.top, 5)
                                .padding(.bottom, 10)
                                .shadow(radius: 1.5)
                        })
                    
                    NavigationLink(
                        destination: EntertainmentView()
                            .navigationBarHidden(true),
                        label: {
                            Text("Entertainment")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding(.horizontal, 20)
                                .frame(height : 50)
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.horizontal, 5)
                                .padding(.top, 5)
                                .padding(.bottom, 10)
                                .shadow(radius: 1.5)
                        } )
                    
                    NavigationLink(
                        destination: HealthView()
                            .navigationBarHidden(true),
                        label: {
                            Text("Health")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding(.horizontal, 20)
                                .frame(height : 50)
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.horizontal, 5)
                                .padding(.top, 5)
                                .padding(.bottom, 10)
                                .shadow(radius: 1.5)
                        } )
                    
                    
                    NavigationLink(
                        destination: ScienceView()
                            .navigationBarHidden(true),
                        label: {
                            Text("Science")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding(.horizontal, 20)
                                .frame(height : 50)
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.horizontal, 5)
                                .padding(.top, 5)
                                .padding(.bottom, 10)
                                .shadow(radius: 1.5)
                        } )
                    
                    NavigationLink(
                        destination: SportsView()
                            .navigationBarHidden(true),
                        label: {
                            Text("Sports")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding(.horizontal, 20)
                                .frame(height : 50)
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.horizontal, 5)
                                .padding(.top, 5)
                                .padding(.bottom, 10)
                                .shadow(radius: 1.5)
                        } )
                    
                    NavigationLink(
                        destination: TechnologyView()
                            .navigationBarHidden(true),
                        label: {
                            Text("Technology")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding(.horizontal, 20)
                                .frame(height : 50)
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.horizontal, 5)
                                .padding(.top, 5)
                                .padding(.bottom, 10)
                                .shadow(radius: 1.5)
                        } )
                    
                    NavigationLink(
                        destination: GeneralView()
                            .navigationBarHidden(true),
                        label: {
                            Text("General")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding(.horizontal, 20)
                                .frame(height : 50)
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.horizontal, 5)
                                .padding(.top, 5)
                                .padding(.bottom, 10)
                                .shadow(radius: 1.5)
                        } )
                }
            }
            .padding(.leading, 10)
        }
    }
}
