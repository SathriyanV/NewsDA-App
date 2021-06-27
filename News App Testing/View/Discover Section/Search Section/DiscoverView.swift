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
    
    @State var showSheet : Bool = false
    
    var body: some View {
        GeometryReader { geo in
            NavigationView {
                VStack {
                    
                    VStack (spacing : 5){
                        
                        Text("Discover")
                            .font(Font.system(size: geo.size.width * 0.075))
                            .fontWeight(.bold)
                            .padding(.horizontal, 18)
                            .padding(.top, 50)
                            .frame(maxWidth: .infinity, alignment : .leading)
                        
                        Text("News from all over the world")
                            .font(Font.system(size: geo.size.width * 0.035))
                            .padding(.horizontal, 19)
                            .frame(maxWidth: .infinity, alignment : .leading)
                        
                        HStack{
                            
                            TextField("Enter search topic", text : $searchTerm)
                                .font(.body)
                                .disableAutocorrection(true)
                                .padding(.leading, 15)
                                .frame(height: 45)
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.vertical, 10)
                                .padding(.leading, 20)
                                .shadow(radius: 1.5)
                            
                            Button(action : {
                                
                                if searchTerm.count > 0 {
                                    
                                    showSheet = true
                                    
                                }else{
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
                                        .padding(.trailing, 20)
                                        .padding(.leading, 5)
                                        .shadow(radius: 1.5)
                                    })
                                
                                    .alert(isPresented: $noValue,
                                           content: {
                                            Alert(title: Text("Warning!"), message: Text("Please Enter a item to search"), dismissButton: .default(Text("Got it!")))
                                           })
                            .fullScreenCover(isPresented: $showSheet) {
                                DiscoverDetailView(searchTerm: $searchTerm)
                                .navigationBarBackButtonHidden(true)
                                .navigationBarHidden(true)
                            }
                        }
                        
                        Divider()
                            .padding(.top, 5)
                            .padding(.bottom, 10)
                        
                        VStack {

                            ScrollView(.vertical,showsIndicators: false) {
                                
                                Text("Top News Sources")
                                    .font(Font.system(size: geo.size.width * 0.065))
                                    .fontWeight(.semibold)
                                    .frame(maxWidth : .infinity, alignment: .leading)

                                    .padding(.leading, geo.size.width * 0.045)
                                
                                
                                VStack (spacing : geo.size.height * 0.03){
                                    HStack (spacing : geo.size.width * 0.045){
                                        
                                        NavigationLink(
                                            destination: ABCNewsDeatilView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                                ZStack {
                                                    
                                                    Color.white.opacity(1)
                                                        .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                        .cornerRadius(geo.size.width * 0.03)
                                                        .shadow(radius: 2)
                                                        .blur(radius: 1.5)
                                                    
                                                    VStack(spacing : geo.size.width * 0.035) {
                                                        Image("ABC News")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                            .frame(width : geo.size.width * 0.12)
                                                        
                                                        Text("ABC News")
                                                            .font(Font.system(size: geo.size.width * 0.045))
                                                            .fontWeight(.semibold)
                                                            .foregroundColor(.black)
                                                    }
                                                }
                                            })
                                        
                                        NavigationLink(
                                            destination: AlJazeeraNewsDetailView()
                                                .navigationBarHidden(true)
                                                .navigationBarBackButtonHidden(true),
                                            
                                            label: {
                                                ZStack {
                                                    
                                                    Color.white.opacity(1)
                                                        .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                        .cornerRadius(geo.size.width * 0.03)
                                                        .shadow(radius: 2)
                                                        .blur(radius: 1.5)
                                                    
                                                    VStack(spacing : geo.size.width * 0.012) {
                                                        Image("Al-Jazeera-Logo")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                            .frame(width : geo.size.width * 0.1)
                                                        
                                                        Text("Al Jazeera")
                                                            .font(Font.system(size: geo.size.width * 0.045))
                                                            .fontWeight(.semibold)
                                                            .foregroundColor(.black)
                                                            .padding(.bottom, geo.size.width * 0.01)
                                                    }
                                                }
                                            })
                                        
                                        
                                    }
                                    .padding(.top, geo.size.height * 0.02)
                                    .padding(.horizontal)
                                    
                                    HStack (spacing : geo.size.width * 0.045){
                                        
                                        NavigationLink(
                                            destination: AssociatedPressNewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            ,label:{
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                VStack(spacing : geo.size.width * 0.03) {
                                                    Image("Associated Press")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.125)
                                                    
                                                    Text("Associated Press")
                                                        .font(Font.system(size: geo.size.width * 0.042))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                        })
                                        
                                        NavigationLink(
                                            destination: BBCNewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                VStack(spacing :0) {
                                                    Image("BBC")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.25)
                                                        .padding(.bottom, geo.size.width * 0.045)
                                                        .padding(.top, geo.size.width * 0.045)
                                                    
                                                    Text("BBC")
                                                        .font(Font.system(size: geo.size.width * 0.045))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                        })
                                    }
                                    
                                    HStack (spacing : geo.size.width * 0.045){
                                        
                                        NavigationLink(
                                            destination: BloombergNewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                VStack(spacing : 0) {
                                                    Image("Bloomberg")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.3)
                                                        .padding(.top, geo.size.width * 0.02)
                                                    
                                                    Text("Bloomberg")
                                                        .font(Font.system(size: geo.size.width * 0.045))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                        .padding(.top, geo.size.width * 0.02)
                                                }
                                            }
                                        })
                                        
                                        NavigationLink(
                                            destination: BusinessInsiderNewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                VStack(spacing : 0) {
                                                    Image("Business Insider")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.33)
                                                    
                                                    Text("Business Insider")
                                                        .font(Font.system(size: geo.size.width * 0.042))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                        })
                                    }
                                    
                                    HStack (spacing : geo.size.width * 0.045){
                                        
                                        NavigationLink(
                                            destination: CNNNewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                VStack(spacing : geo.size.width * 0.03) {
                                                    Image("CNN News")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.2)
                                                        .padding(.top, geo.size.width * 0.03)
                                                    
                                                    Text("CNN News")
                                                        .font(Font.system(size: geo.size.width * 0.045))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                        })
                                        
                                        NavigationLink(
                                            destination: EngadgetNewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                            
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                VStack(spacing : geo.size.width * 0.04) {
                                                    Image("Engadget")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.3)
                                                        .padding(.top, geo.size.width * 0.035)
                                                    
                                                    Text("Engadget")
                                                        .font(Font.system(size: geo.size.width * 0.045))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                        })
                                    }
                                    
                                    HStack (spacing : geo.size.width * 0.045){
                                        
                                        NavigationLink(
                                            destination: EspnNewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                VStack(spacing : geo.size.width * 0.045) {
                                                    Image("ESPN")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.25)
                                                        .padding(.top, geo.size.width * 0.045)
                                                    
                                                    Text("ESPN")
                                                        .font(Font.system(size: geo.size.width * 0.045))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                        })
                                        
                                        NavigationLink(
                                            destination: FortuneNewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                VStack(spacing : -geo.size.width * 0.07) {
                                                    Image("Fortune")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.25)
                                                    
                                                    Text("Fortune")
                                                        .font(Font.system(size: geo.size.width * 0.045))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                        .padding(.bottom, geo.size.width * 0.03)
                                                }
                                            }
                                        })
                                    }
                                    
                                    HStack (spacing : geo.size.width * 0.045){
                                        
                                        NavigationLink(
                                            destination: MashableNewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                VStack(spacing : geo.size.width * 0.04) {
                                                    Image("Mashable")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.28)
                                                        .padding(.top , geo.size.width * 0.05)
                                                    
                                                    Text("Mashable")
                                                        .font(Font.system(size: geo.size.width * 0.045))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                        })
                                        
                                        NavigationLink(
                                            destination: ReutersNewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                VStack(spacing : geo.size.width * 0.02) {
                                                    Image("Reuters")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.13)
                                                        .padding(.top , geo.size.width * 0.045)
                                                    
                                                    Text("Reuters")
                                                        .font(Font.system(size: geo.size.width * 0.045))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                        })
                                    }
                                    
                                    HStack (spacing : geo.size.width * 0.045){
                                        
                                        NavigationLink(
                                            destination: TechCrunchNewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                
                                                VStack(spacing : geo.size.width * 0.04) {
                                                    Image("TechCrunch")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.18)
                                                        .padding(.top , geo.size.width * 0.045)
                                                    
                                                    Text("TechCrunch")
                                                        .font(Font.system(size: geo.size.width * 0.045))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                        })
                                        
                                        NavigationLink(
                                            destination: TechRadarNewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                VStack(spacing : geo.size.width * 0.035) {
                                                    Image("techradar")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.33)
                                                        .padding(.top , geo.size.width * 0.05)
                                                    
                                                    Text("TechRadar")
                                                        .font(Font.system(size: geo.size.width * 0.045))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                        })
                                    }
                                    
                                    HStack (spacing : geo.size.width * 0.045){
                                        
                                        NavigationLink(
                                            destination: TheHindunewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                VStack(spacing : geo.size.width * 0.03) {
                                                    Image("The Hindu")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.25)
                                                        .padding(.top , geo.size.width * 0.045)
                                                    
                                                    Text("The Hindu")
                                                        .font(Font.system(size: geo.size.width * 0.045))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                        })
                                        
                                        NavigationLink(
                                            destination: TheVergeNewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                VStack(spacing : geo.size.width * 0.035) {
                                                    Image("The Verge")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.13)
                                                        .padding(.top , geo.size.width * 0.035)
                                                    
                                                    Text("The Verge")
                                                        .font(Font.system(size: geo.size.width * 0.045))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                        })
                                    }
                                    
                                    HStack (spacing : geo.size.width * 0.045){
                                        
                                        NavigationLink(
                                            destination: TimesOfIndiaNewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                VStack(spacing : geo.size.width * 0.01) {
                                                    Image("Times of India")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.4)
                                                        .padding(.top, geo.size.width * 0.035)
                                                    
                                                    
                                                    Text("TOI")
                                                        .font(Font.system(size: geo.size.width * 0.045))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                        })
                                        
                                        NavigationLink(
                                            destination: WiredNewsDetailView()
                                                .navigationBarBackButtonHidden(true)
                                                .navigationBarHidden(true)
                                            
                                            , label: {
                                            ZStack {
                                                
                                                Color.white.opacity(1)
                                                    .frame(width : geo.size.width * 0.43, height: geo.size.height * 0.16)
                                                    .cornerRadius(geo.size.width * 0.03)
                                                    .shadow(radius: 2)
                                                    .blur(radius: 1.5)
                                                
                                                VStack(spacing : geo.size.width * 0.02) {
                                                    Image("Wired")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width : geo.size.width * 0.25)
                                                        .padding(.top, geo.size.width * 0.035)
                                                    
                                                    Text("Wired")
                                                        .font(Font.system(size: geo.size.width * 0.045))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                        })
                                    }
                                    .padding(.bottom, geo.size.width * 0.02)
                                }
                                .navigationBarHidden(true)
                            }
                        }
                        .frame(maxWidth : .infinity, maxHeight: .infinity, alignment: .top)
                        .background(Color("BGColor"))
                        .edgesIgnoringSafeArea(.top)
                        
                    }
                }
                .background(Color("BGColor"))
                .edgesIgnoringSafeArea(.top)
                
            }
        }
        .ignoresSafeArea(.keyboard)
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}

