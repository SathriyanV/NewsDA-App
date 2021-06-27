//
//  OnBoardingView.swift
//  News App Testing
//
//  Created by Sathriyan on 14/06/21.
//

import SwiftUI

struct OnBoardingView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        TabView{
            
            onBoardingOne()
                
            onBoardingTwo()
            
            onBoardingThree()
            
            onBoardingLast()
            
        }
        .tabViewStyle(PageTabViewStyle())
        
}
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}

// MARK:- Onboarding screen one

struct onBoardingOne: View {
    var body: some View {
        VStack{
            VStack (alignment : .leading, spacing: 5){
                Image("Group")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width : 90, height: 90)
                    .padding(.bottom, 15)
                
                Text("Welcome to")
                    .foregroundColor(.secondary)
                    .font(Font.system(size: 30))
                    .fontWeight(.bold)
                
                Text("NewsDA")
                    .foregroundColor(Color(red: 0.999, green: 0.174, blue: 0.273))
                    .font(Font.system(size: 60))
                    .fontWeight(.bold)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.top, 40)
            
            HStack{
                Text("Swipe")
                    .foregroundColor(Color(red: 0.999, green: 0.174, blue: 0.273))
                    .fontWeight(.bold)
                
                Image(systemName: "arrow.right")
                    .foregroundColor(Color(red: 0.999, green: 0.174, blue: 0.273))
                    .font(.title3)
                
            }
            .frame(maxWidth : .infinity, alignment: .trailing)
            .padding(.trailing)
            .padding(.bottom, 50)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color.white)
        .cornerRadius(25)
        .padding(.horizontal, 20)
        .padding(.vertical, 35)
        .shadow(radius: 5)
    }
}

// MARK:- Onboarding screen two

struct onBoardingTwo: View {
    var body: some View {
        VStack{
            VStack (alignment : .leading, spacing: 5){
                Image("Group")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width : 50, height: 50)
                    .padding(.bottom, 85)
                
                VStack (alignment : .leading, spacing: 5){
                    Text("The")
                        .foregroundColor(.secondary)
                        .font(Font.system(size: 30))
                        .fontWeight(.bold)
                    
                    Text("Latest")
                        .foregroundColor(Color(red: 0.999, green: 0.174, blue: 0.273))
                        .font(Font.system(size: 60))
                        .fontWeight(.bold)
                    
                    Text("Headlines")
                        .foregroundColor(Color(red: 0.999, green: 0.174, blue: 0.273))
                        .font(Font.system(size: 60))
                        .fontWeight(.bold)
                    
                    Text("on the go...")
                        .foregroundColor(.secondary)
                        .font(Font.system(size: 30))
                        .fontWeight(.bold)
                }
                .padding(.bottom, 50)
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.top, 40)
            
            HStack{
                Text("Swipe")
                    .foregroundColor(Color(red: 0.999, green: 0.174, blue: 0.273))
                    .fontWeight(.bold)
                
                Image(systemName: "arrow.right")
                    .foregroundColor(Color(red: 0.999, green: 0.174, blue: 0.273))
                    .font(.title3)
                
            }
            .frame(maxWidth : .infinity, alignment: .trailing)
            .padding(.trailing)
            .padding(.bottom, 50)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color.white)
        .cornerRadius(25)
        .padding(.horizontal, 20)
        .padding(.vertical, 35)
        .shadow(radius: 5)
    }
}

// MARK:- Onboarding screen three

struct onBoardingThree: View {
    var body: some View {
        VStack{
            VStack (alignment : .leading, spacing: 5){
                Image("Group")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width : 50, height: 50)
                    .padding(.bottom, 85)
                
                VStack (alignment : .leading, spacing: 5){
                    Text("The")
                        .foregroundColor(.secondary)
                        .font(Font.system(size: 30))
                        .fontWeight(.bold)
                    
                    Text("Explore")
                        .foregroundColor(Color(red: 0.999, green: 0.174, blue: 0.273))
                        .font(Font.system(size: 60))
                        .fontWeight(.bold)
                    
                    Text("Section")
                        .foregroundColor(Color(red: 0.999, green: 0.174, blue: 0.273))
                        .font(Font.system(size: 60))
                        .fontWeight(.bold)
                    
                    Text("Search any topic...")
                        .foregroundColor(.secondary)
                        .font(Font.system(size: 30))
                        .fontWeight(.bold)
                }
                .padding(.bottom, 50)
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.top, 40)
            .padding(.trailing, 20)
            
            HStack{
                Text("Swipe")
                    .foregroundColor(Color(red: 0.999, green: 0.174, blue: 0.273))
                    .fontWeight(.bold)
                
                Image(systemName: "arrow.right")
                    .foregroundColor(Color(red: 0.999, green: 0.174, blue: 0.273))
                    .font(.title3)
                
            }
            .frame(maxWidth : .infinity, alignment: .trailing)
            .padding(.trailing)
            .padding(.bottom, 50)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color.white)
        .cornerRadius(25)
        .padding(.horizontal, 20)
        .padding(.vertical, 35)
        .shadow(radius: 5)
    }
}

// MARK:- Onboarding screen four

struct onBoardingLast: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        VStack{
            VStack (alignment : .leading, spacing: 5){
                Image("Group")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width : 50, height: 50)
                    .padding(.bottom, 85)
                
                VStack (alignment : .leading, spacing: 5){
                    Text("The")
                        .foregroundColor(.secondary)
                        .font(Font.system(size: 30))
                        .fontWeight(.bold)
                    
                    Text("Bookmark")
                        .foregroundColor(Color(red: 0.999, green: 0.174, blue: 0.273))
                        .font(Font.system(size: 60))
                        .fontWeight(.bold)
                    
                    Text("Section")
                        .foregroundColor(Color(red: 0.999, green: 0.174, blue: 0.273))
                        .font(Font.system(size: 60))
                        .fontWeight(.bold)
                    
                    Text("Save your favourites")
                        .foregroundColor(.secondary)
                        .font(Font.system(size: 30))
                        .fontWeight(.bold)
                }
                .padding(.bottom, 50)
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.top, 40)
            
            Button(action: {
                
                isOnboarding = false
                
            }, label: {
                HStack{
                    Text("Exit")
                        .font(Font.system(size: 22))
                        .foregroundColor(Color(red: 0.999, green: 0.174, blue: 0.273))
                        .fontWeight(.bold)
                    
                }
                .frame(maxWidth : .infinity, alignment: .center)
                .frame(width : 85, height : 20)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 1.5)
                .padding(.bottom, 50)
            })
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color.white)
        .cornerRadius(25)
        .padding(.horizontal, 20)
        .padding(.vertical, 35)
        .shadow(radius: 5)
    }
}
